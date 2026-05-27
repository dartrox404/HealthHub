import 'package:flutter/material.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/features/widgets/symptoms_page_wrap.dart';

class SymptomsCard extends StatelessWidget {
  const SymptomsCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.value,
  });
  final String title;
  final String subtitle;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: AppSizes.kspace10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 290,
                height: 250,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.08),
                      blurRadius: 20,
                      spreadRadius: 1,
                      offset: Offset(0, 8),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(AppSizes.kradiusLg),
                  color: context.color.secondary,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.kspace10,
                    horizontal: AppSizes.kspace12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            title,
                            style: context.text.titleLarge?.copyWith(
                              color: context.color.primary,
                              fontFamily: 'mons',
                            ),
                          ),
                          Text(
                            subtitle,
                            style: context.text.bodyMedium?.copyWith(
                              color: context.color.primary,
                              fontFamily: 'raleway',
                            ),
                          ),
                        ],
                      ),
                      SymptomsPageWrap(),
                    ],
                  ),
                ),
              ),
              Container(
                width: 33,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
                  color: context.color.secondary,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 0,
          top: value,
          child: Container(
            height: 180,
            width: 33,
            decoration: BoxDecoration(
              color: context.color.tertiary,
              borderRadius: BorderRadius.circular(AppSizes.kradiusMd),
            ),
          ),
        ),
        Positioned(
          right: 7,
          top: 0,
          child: Text(
            '10',
            style: context.text.bodyLarge?.copyWith(
              fontFamily: 'raleway',
              color: context.color.primary,
            ),
          ),
        ),
        Positioned(
          right: 13,
          bottom: 15,
          child: Text(
            '1',
            style: context.text.bodyLarge?.copyWith(
              fontFamily: 'raleway',
              color: context.color.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
