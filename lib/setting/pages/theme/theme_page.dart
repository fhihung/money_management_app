import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:money_management_app/app/app.dart';
import 'package:money_management_app/app/bloc/app_bloc.dart';
import 'package:money_management_app/app/bloc/app_event.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    final appColors = context.appColors;
    final themeMode = context.watch<AppBloc>().state.themeMode;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('Theme'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.space6,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select Theme',
              style: AppTextStyles.bodySm2.copyWith(
                color: appColors.textBlackDarkVersion,
              ),
            ),
            const SizedBox(
              height: AppSpaces.space4,
            ),
            Text(
              'Choose a theme that suits your preference. Switch between Light, Dark, or System Default modes to enhance your viewing experience.',
              style: AppTextStyles.captionSm.copyWith(
                color: appColors.textGray2,
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Light Mode',
                style: AppTextStyles.bodySm2.copyWith(
                  color: appColors.textBlackDarkVersion,
                ),
              ),
              trailing: Radio<ThemeMode>(
                activeColor: appColors.borderPrimary,
                value: ThemeMode.light,
                groupValue: themeMode,
                onChanged: (value) {
                  if (value != null) {
                    context.read<AppBloc>().add(ThemeChanged(themeMode: value));
                  }
                },
              ),
              onTap: () {
                context
                    .read<AppBloc>()
                    .add(const ThemeChanged(themeMode: ThemeMode.light));
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Dark Mode',
                style: AppTextStyles.bodySm2.copyWith(
                  color: appColors.textBlackDarkVersion,
                ),
              ),
              trailing: Radio<ThemeMode>(
                activeColor: appColors.borderPrimary,
                value: ThemeMode.dark,
                groupValue: themeMode,
                onChanged: (value) {
                  if (value != null) {
                    context.read<AppBloc>().add(ThemeChanged(themeMode: value));
                  }
                },
              ),
              onTap: () {
                context
                    .read<AppBloc>()
                    .add(const ThemeChanged(themeMode: ThemeMode.dark));
              },
            ),
            ListTile(
              splashColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              title: Text(
                'System Default',
                style: AppTextStyles.bodySm2.copyWith(
                  color: appColors.textBlackDarkVersion,
                ),
              ),
              trailing: Radio<ThemeMode>(
                activeColor: appColors.borderPrimary,
                value: ThemeMode.system,
                groupValue: themeMode,
                onChanged: (value) {
                  if (value != null) {
                    context.read<AppBloc>().add(ThemeChanged(themeMode: value));
                  }
                },
              ),
              onTap: () {
                context
                    .read<AppBloc>()
                    .add(const ThemeChanged(themeMode: ThemeMode.system));
              },
            ),
          ],
        ),
      ),
    );
  }
}
