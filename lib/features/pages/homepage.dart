import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/data/model/gridLists.dart';
import 'package:health_hub/features/widgets/homepage_gird_card.dart';
import 'package:health_hub/features/widgets/homepage_main_card.dart';
import 'package:iconsax/iconsax.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                          "Dashboard",
                          style: context.text.headlineSmall?.copyWith(
                            fontFamily: 'mons',
                            fontWeight: FontWeight.w500,
                            color: context.color.primary,
                          ),
                        ),
                        Icon(
                          Iconsax.notification,
                          color: context.color.primary,
                        ),
                      ],
                    ),
                    Text(
                      'Monitor your health',
                      style: context.text.bodyLarge?.copyWith(
                        fontFamily: 'raleway',
                        fontWeight: FontWeight.normal,
                        color: context.color.primary.withValues(alpha: .6),
                      ),
                    ),
                    const Gap(AppSizes.kspace16),
                    HomepageMainCard(),
                    const Gap(AppSizes.kspace16),
                    Text(
                      'Organ Status',
                      style: context.text.bodyLarge?.copyWith(
                        fontFamily: 'raleway',
                        color: context.color.primary,
                      ),
                    ),
                    const Gap(AppSizes.kspace16),
                    SizedBox(
                      height: 400,
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: AppSizes.kspace10,
                              mainAxisSpacing: AppSizes.kspace10,
                            ),
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return HomepageGirdCard(
                            image: imagelists[index],
                            title: titlelist[index],
                            subtitle: subtitlelist[index],
                            trailing: trailingtitlelist[index],
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Positioned(
                  right: -40,
                  top: 40,
                  child: Image.asset('assets/images/heart.webp', height: 250),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
