import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../bloc/wallet/wallet_bloc.dart';
import '../../bloc/wallet/wallet_event.dart';
import '../../bloc/wallet/wallet_state.dart';
import '../../bloc/transaction/transaction_bloc.dart';
import '../../bloc/transaction/transaction_event.dart';
import '../../bloc/transaction/transaction_state.dart';
import 'package:intl/intl.dart';
import '../../components/common/glass_app_bar.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import 'transaction_details_screen.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  void initState() {
    super.initState();
    context.read<WalletBloc>().add(WalletFetchRequested());
    context.read<TransactionBloc>().add(TransactionFetchAll());
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: GlassAppBar(
        title: 'My Wallet',
        leadingIcon: Icons.arrow_back_rounded,
        onMenuPressed: () => Navigator.pop(context),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: colors.backgroundGradient),
        child: BlocBuilder<WalletBloc, WalletState>(
          builder: (context, state) {
            if (state is WalletLoading || state is WalletInitial) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is WalletError) {
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error_outline, color: colors.error, size: 48),
                    const SizedBox(height: 16),
                    Text(
                      state.message,
                      style: AppStyles.bodyMedium(
                        context,
                      ).copyWith(color: colors.error),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colors.primary,
                        foregroundColor: colors.textOnPrimary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () => context.read<WalletBloc>().add(
                        WalletFetchRequested(),
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            if (state is WalletLoaded) {
              final wallet = state.wallet;

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<WalletBloc>().add(WalletFetchRequested());
                  context.read<TransactionBloc>().add(TransactionFetchAll());
                },
                color: colors.primary,
                backgroundColor: colors.surfaceLight,
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Balance Card
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                          gradient: colors.cardGradient,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                              color: colors.primary.withValues(alpha: 0.3),
                              blurRadius: 20,
                              offset: const Offset(0, 10),
                            ),
                          ],
                          border: Border.all(
                            color: colors.glassBorder,
                            width: 1.5,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Balance',
                              style: AppStyles.bodyMedium(context).copyWith(
                                color: Colors.white70,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '₦${wallet.nairaBalance}',
                              style: GoogleFonts.poppins(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: -1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Transactions Section
                      Text('Recent Transactions', style: AppStyles.h4(context)),
                      const SizedBox(height: 16),

                      BlocBuilder<TransactionBloc, TransactionState>(
                        builder: (context, txState) {
                          if (txState is TransactionLoading ||
                              txState is TransactionInitial) {
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }

                          if (txState is TransactionError) {
                            return Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 24.0,
                                ),
                                child: Text(
                                  txState.message,
                                  style: AppStyles.bodyMedium(
                                    context,
                                  ).copyWith(color: colors.error),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }

                          if (txState is TransactionListLoaded) {
                            final txList = txState.transactions;

                            if (txList.isEmpty) {
                              return Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 40,
                                  ),
                                  child: Column(
                                    children: [
                                      Icon(
                                        Icons.history_rounded,
                                        size: 48,
                                        color: colors.textHint.withValues(
                                          alpha: 0.5,
                                        ),
                                      ),
                                      const SizedBox(height: 12),
                                      Text(
                                        'No transactions yet',
                                        style: AppStyles.bodyMedium(
                                          context,
                                        ).copyWith(color: colors.textHint),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }

                            return ListView.separated(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: txList.length,
                              separatorBuilder: (context, index) =>
                                  const SizedBox(height: 12),
                              itemBuilder: (context, index) {
                                final tx = txList[index];
                                final isCredit =
                                    tx.type.toUpperCase() == 'CREDIT';
                                final iconColor = isCredit
                                    ? colors.accentGreen
                                    : colors.error;
                                final bgColor = isCredit
                                    ? colors.accentGreen.withValues(alpha: 0.1)
                                    : colors.error.withValues(alpha: 0.1);

                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            TransactionDetailsScreen(
                                              transaction: tx,
                                            ),
                                      ),
                                    );
                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 10,
                                        sigmaY: 10,
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(16),
                                        decoration: BoxDecoration(
                                          color: colors.surfaceElevated
                                              .withValues(alpha: 0.5),
                                          borderRadius: BorderRadius.circular(
                                            16,
                                          ),
                                          border: Border.all(
                                            color: colors.glassBorder,
                                            width: 1,
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Container(
                                              width: 48,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                color: bgColor,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                isCredit
                                                    ? Icons
                                                          .arrow_downward_rounded
                                                    : Icons
                                                          .arrow_upward_rounded,
                                                color: iconColor,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    tx.narration.isNotEmpty
                                                        ? tx.narration
                                                        : tx.type,
                                                    style:
                                                        AppStyles.bodyLarge(
                                                          context,
                                                        ).copyWith(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    tx.createdAt != null
                                                        ? DateFormat(
                                                            'MMM d, yyyy - h:mm a',
                                                          ).format(
                                                            tx.createdAt!,
                                                          )
                                                        : '',
                                                    style:
                                                        AppStyles.bodySmall(
                                                          context,
                                                        ).copyWith(
                                                          color: colors
                                                              .textSecondary,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '${isCredit ? "+" : "-"}₦${tx.amount.toStringAsFixed(2)}',
                                                  style:
                                                      AppStyles.bodyLarge(
                                                        context,
                                                      ).copyWith(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: isCredit
                                                            ? colors.accentGreen
                                                            : colors
                                                                  .textPrimary,
                                                      ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  tx.status,
                                                  style:
                                                      AppStyles.labelSmall(
                                                        context,
                                                      ).copyWith(
                                                        color:
                                                            tx.status.toUpperCase() ==
                                                                    'SUCCESS' ||
                                                                tx.status.toUpperCase() ==
                                                                    'COMPLETED'
                                                            ? colors.accentGreen
                                                            : colors.textSecondary,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                          return const SizedBox();
                        },
                      ),
                    ],
                  ),
                ),
              );
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
