import 'package:flutter/material.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';

class HomepageMainCard extends StatelessWidget {
  const HomepageMainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: context.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 20,
            spreadRadius: 1,
            offset: Offset(0, 8),
          ),
        ],
        color: context.color.secondary,
        borderRadius: BorderRadius.circular(AppSizes.kradiusXl),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.kspace10,
          horizontal: AppSizes.kspace16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Overall Health',
              style: context.text.titleLarge?.copyWith(
                fontFamily: 'raleway',
                fontWeight: FontWeight.normal,
                color: context.color.primary,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.kspace32),
              child: Text(
                'Good',
                style: context.text.bodyLarge?.copyWith(
                  fontFamily: 'raleway',
                  color: context.color.primary,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: AppSizes.kspace16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '82%',
                    style: context.text.displayLarge?.copyWith(
                      fontFamily: 'mons',
                      color: context.color.primary,
                    ),
                  ),
                  Text(
                    'Optimal Status',
                    style: context.text.bodyMedium?.copyWith(
                      fontFamily: 'raleway',
                      color: context.color.primary,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
