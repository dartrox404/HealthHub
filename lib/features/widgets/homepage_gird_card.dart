import 'package:flutter/material.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';

class HomepageGirdCard extends StatelessWidget {
  const HomepageGirdCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.trailing,
  });
  final String image;
  final String title;
  final String subtitle;
  final String trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 150,
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

      child: Stack(
        children: [
          Positioned(
            left: -55,
            bottom: -50,
            child: Image.asset(image, height: 150),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.kspace10,
              horizontal: AppSizes.kspace12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.text.bodyLarge?.copyWith(
                        color: context.color.primary,
                        fontFamily: 'raleway',
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          subtitle,
                          style: context.text.titleLarge?.copyWith(
                            fontFamily: 'poppins',
                            color: context.color.primary,
                          ),
                        ),
                        Text(
                          trailing,
                          style: context.text.bodyMedium?.copyWith(
                            fontFamily: 'raleway',
                            color: context.color.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
