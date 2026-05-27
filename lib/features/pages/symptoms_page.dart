import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/data/model/symptoms_list.dart';
import 'package:health_hub/features/widgets/symptoms_card.dart';

class SymptomsPage extends StatelessWidget {
  const SymptomsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.width,
        height: context.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/background.webp'),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.kspace10,
              horizontal: AppSizes.kspace12,
            ),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your Symptoms',
                          style: context.text.headlineSmall?.copyWith(
                            fontFamily: 'mons',
                            color: context.color.primary,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: context.color.primary,
                        ),
                      ],
                    ),
                    Text(
                      'Give me some info',
                      style: context.text.bodyLarge?.copyWith(
                        fontFamily: 'raleway',
                        color: context.color.primary.withValues(alpha: .6),
                      ),
                    ),
                    const Gap(AppSizes.kspace16),
                    Expanded(
                      child: ListView.builder(
                        itemCount: symptomscardlist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return SymptomsCard(
                            value: 70,
                            title: symptomscardlist[index],
                            subtitle: "How long symptoms long?",
                          );
                        },
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
  }
}
