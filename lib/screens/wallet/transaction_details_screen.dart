import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../data/models/transaction_model.dart';
import '../../components/common/glass_app_bar.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';

class TransactionDetailsScreen extends StatelessWidget {
  final TransactionModel transaction;

  const TransactionDetailsScreen({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final isCredit = transaction.type.toUpperCase() == 'CREDIT';
    final isSuccess =
        transaction.status.toUpperCase() == 'SUCCESS' ||
        transaction.status.toUpperCase() == 'COMPLETED';

    final amountColor = isCredit ? colors.accentGreen : colors.textPrimary;
    final statusColor = isSuccess ? colors.accentGreen : colors.textSecondary;
    final iconColor = isCredit ? colors.accentGreen : colors.error;
    final iconBgColor = isCredit
        ? colors.accentGreen.withValues(alpha: 0.1)
        : colors.error.withValues(alpha: 0.1);

    return Scaffold(
      backgroundColor: colors.background,
      appBar: GlassAppBar(
        title: 'Transaction Details',
        leadingIcon: Icons.arrow_back_rounded,
        onMenuPressed: () => Navigator.pop(context),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: colors.backgroundGradient),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Icon
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: iconBgColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  isCredit
                      ? Icons.arrow_downward_rounded
                      : Icons.arrow_upward_rounded,
                  color: iconColor,
                  size: 40,
                ),
              ),
              const SizedBox(height: 24),
              // Amount
              Text(
                '${isCredit ? "+" : "-"}₦${transaction.amount.toStringAsFixed(2)}',
                style: GoogleFonts.poppins(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: amountColor,
                  letterSpacing: -1,
                ),
              ),
              const SizedBox(height: 8),
              // Status Badge
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: statusColor.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: statusColor.withValues(alpha: 0.3)),
                ),
                child: Text(
                  transaction.status.toUpperCase(),
                  style: AppStyles.labelMedium(
                    context,
                  ).copyWith(color: statusColor, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 48),

              // Details Card
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: colors.surfaceElevated.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(24),
                      border: Border.all(color: colors.glassBorder, width: 1),
                    ),
                    child: Column(
                      children: [
                        _DetailRow(
                          label: 'Description',
                          value: transaction.narration.isNotEmpty
                              ? transaction.narration
                              : transaction.type,
                          colors: colors,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Divider(color: Colors.white12, height: 1),
                        ),
                        _DetailRow(
                          label: 'Transaction ID',
                          value: transaction.reference,
                          colors: colors,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Divider(color: Colors.white12, height: 1),
                        ),
                        _DetailRow(
                          label: 'Transaction Type',
                          value: transaction.type,
                          colors: colors,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Divider(color: Colors.white12, height: 1),
                        ),
                        _DetailRow(
                          label: 'Date & Time',
                          value: transaction.createdAt != null
                              ? DateFormat(
                                  'MMM d, yyyy - h:mm a',
                                ).format(transaction.createdAt!)
                              : '-',
                          colors: colors,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;
  final AppColorsExtension colors;

  const _DetailRow({
    required this.label,
    required this.value,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: AppStyles.bodyMedium(context).copyWith(color: colors.textHint),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            value,
            textAlign: TextAlign.right,
            style: AppStyles.bodyMedium(
              context,
            ).copyWith(color: colors.textPrimary, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
