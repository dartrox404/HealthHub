import 'package:flutter/material.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';

class DiseaseCard extends StatelessWidget {
  const DiseaseCard({
    super.key,
    required this.title,
    this.trailing,
    required this.description,
    required this.percentage,
  });
  final String title;
  final String? trailing;
  final String description;
  final String percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSizes.kspace10),
      height: 180,
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
          vertical: AppSizes.kspace8,
          horizontal: AppSizes.kspace12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: context.text.titleLarge?.copyWith(
                    fontFamily: 'raleway',
                    color: context.color.primary,
                  ),
                ),
                Text(
                  trailing ?? "",
                  style: context.text.bodyMedium?.copyWith(
                    fontFamily: 'raleway',
                    color: context.color.primary,
                  ),
                ),
              ],
            ),
            Text(
              description,
              style: context.text.bodyMedium?.copyWith(
                fontFamily: 'mons',
                color: context.color.primary,
              ),
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: percentage,
                    style: context.text.displayMedium?.copyWith(
                      fontFamily: 'poppins',
                      color: context.color.primary,
                    ),
                  ),
                  TextSpan(
                    text: ' match',
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
