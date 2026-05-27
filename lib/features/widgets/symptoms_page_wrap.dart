import 'package:flutter/material.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/data/model/symptoms_list.dart';

class SymptomsPageWrap extends StatefulWidget {
  const SymptomsPageWrap({super.key});

  @override
  State<SymptomsPageWrap> createState() => _SymptomsPageWrapState();
}

class _SymptomsPageWrapState extends State<SymptomsPageWrap> {
  int tracker = 0;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSizes.kspace5,
      runSpacing: AppSizes.kspace5,
      children: List.generate(
        symptomslist.length,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              tracker = index;
            });
          },
          child: Container(
            width: 130,
            height: 60,
            decoration: BoxDecoration(
              color: tracker == index
                  ? context.color.tertiary
                  : context.color.tertiary.withValues(alpha: .3),
              borderRadius: BorderRadius.circular(AppSizes.kradiusSm),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.kspace12),
              child: Center(
                child: Text(
                  symptomslist[index],
                  style: context.text.bodyLarge?.copyWith(
                    color: tracker == index
                        ? context.color.secondary
                        : context.color.primary,
                    fontFamily: "mons",
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
