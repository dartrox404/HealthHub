import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/data/model/disease_model.dart';
import 'package:health_hub/features/widgets/disease_card.dart';

class DiseasePage extends StatelessWidget {
  const DiseasePage({super.key});

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
            padding: EdgeInsets.symmetric(
              vertical: AppSizes.kspace10,
              horizontal: AppSizes.kspace12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back, color: context.color.primary),
                Gap(AppSizes.kspace10),
                Text(
                  'Possible disease',
                  style: context.text.headlineSmall?.copyWith(
                    fontFamily: 'mons',
                    color: context.color.primary,
                  ),
                ),
                Text(
                  'Here is list of Possible disease',
                  style: context.text.bodyLarge?.copyWith(
                    fontFamily: 'raleway',
                    color: context.color.primary.withValues(alpha: .6),
                  ),
                ),
                const Gap(AppSizes.kspace16),
                Expanded(
                  child: ListView.builder(
                    itemCount: dieaselist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return DiseaseCard(
                        title: dieaselist[index].title,
                        trailing: dieaselist[index].trailing,
                        description: dieaselist[index].description,
                        percentage: dieaselist[index].perecentage,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
