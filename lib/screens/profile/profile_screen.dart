import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/profile/profile_bloc.dart';
import '../../bloc/profile/profile_event.dart';
import '../../bloc/profile/profile_state.dart';
import '../../components/common/glass_app_bar.dart';
import '../../core/constants/app_styles.dart';
import '../../core/theme/app_colors_extension.dart';
import '../../data/models/user_model.dart';
import 'package:intl/intl.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(ProfileFetchRequested());
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: GlassAppBar(
        title: 'Profile',
        leadingIcon: Icons.arrow_back_rounded,
        onMenuPressed: () => Navigator.pop(context),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(gradient: colors.backgroundGradient),
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            if (state is ProfileLoading || state is ProfileInitial) {
              return const Center(child: CircularProgressIndicator());
            }

            if (state is ProfileError) {
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
                      onPressed: () => context.read<ProfileBloc>().add(
                        ProfileFetchRequested(),
                      ),
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
            }

            if (state is ProfileLoaded) {
              return _buildProfileContent(context, state.user);
            }

            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, UserModel user) {
    final colors = context.appColors;

    return RefreshIndicator(
      onRefresh: () async {
        context.read<ProfileBloc>().add(ProfileFetchRequested());
      },
      color: colors.primary,
      backgroundColor: colors.surfaceLight,
      child: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 16),
            // Avatar
            CircleAvatar(
              radius: 50,
              backgroundColor: colors.primary.withValues(alpha: 0.2),
              child: Text(
                user.name.isNotEmpty ? user.name[0].toUpperCase() : '?',
                style: AppStyles.h2(context).copyWith(color: colors.primary),
              ),
            ),
            const SizedBox(height: 16),
            Text(user.name, style: AppStyles.h3(context)),
            const SizedBox(height: 4),
            Text(
              user.email,
              style: AppStyles.bodyMedium(
                context,
              ).copyWith(color: colors.textSecondary),
            ),
            const SizedBox(height: 32),

            // Details Card
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colors.surfaceElevated,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  _buildProfileRow(
                    context,
                    Icons.person_outline,
                    'First Name',
                    user.firstName ?? '--',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileRow(
                    context,
                    Icons.person_outline,
                    'Last Name',
                    user.lastName ?? '--',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileRow(
                    context,
                    Icons.phone_outlined,
                    'Phone',
                    user.phone ?? '--',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileRow(
                    context,
                    Icons.calendar_today_outlined,
                    'Date of Birth',
                    user.dob ?? '--',
                  ),
                  const SizedBox(height: 16),
                  _buildProfileRow(
                    context,
                    Icons.verified_outlined,
                    'Verification Status',
                    (user.verified ?? false) ? 'Verified' : 'Unverified',
                    valueColor: (user.verified ?? false)
                        ? colors.success
                        : colors.textHint,
                  ),
                  if (user.createdAt != null) ...[
                    const SizedBox(height: 16),
                    _buildProfileRow(
                      context,
                      Icons.access_time_outlined,
                      'Current Member Since',
                      DateFormat('MMM dd, yyyy').format(user.createdAt!),
                    ),
                  ],
                  if (user.kycInfo != null) ...[
                    const SizedBox(height: 16),
                    _buildProfileRow(
                      context,
                      Icons.shield_outlined,
                      'KYC Tier',
                      user.kycInfo?['currentTier']?.toString().toUpperCase() ??
                          '--',
                    ),
                    const SizedBox(height: 16),
                    _buildProfileRow(
                      context,
                      Icons.money_outlined,
                      'Daily Limit',
                      user.kycInfo?['limits']?['dailyTransactionLimit'] != null
                          ? '₦${NumberFormat('#,##0').format(user.kycInfo!['limits']['dailyTransactionLimit'])}'
                          : '--',
                    ),
                  ],
                  if (user.isAdmin != null) ...[
                    const SizedBox(height: 16),
                    _buildProfileRow(
                      context,
                      Icons.security_outlined,
                      'Admin Access',
                      (user.isAdmin ?? false) ? 'Granted' : 'None',
                      valueColor: (user.isAdmin ?? false)
                          ? colors.success
                          : colors.textPrimary,
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow(
    BuildContext context,
    IconData icon,
    String label,
    String value, {
    Color? valueColor,
  }) {
    final colors = context.appColors;
    return Row(
      children: [
        Icon(icon, color: colors.primary, size: 24),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: AppStyles.labelSmall(
                context,
              ).copyWith(color: colors.textHint),
            ),
            const SizedBox(height: 4),
            Text(
              value,
              style: AppStyles.bodyMedium(context).copyWith(
                fontWeight: FontWeight.w600,
                color: valueColor ?? colors.textPrimary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
