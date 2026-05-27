import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_hub/core/const/app_sizes.dart';
import 'package:health_hub/core/extensions/app_extensions.dart';
import 'package:health_hub/data/model/navigation_bar_list.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<CustomBottomNavBar> {
  int tracker = 0;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: 250,
      bottom: 15,
      right: 60,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.08),
              blurRadius: 20,
              spreadRadius: 1,
              offset: Offset(0, 8),
            ),
          ],
          color: context.color.primary,
          borderRadius: BorderRadius.circular(AppSizes.kspace32),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              navicons.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    tracker = index;
                  });
                },
                child: AnimatedScale(
                  scale: tracker == index ? 1.15 : 1,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    decoration: BoxDecoration(
                      color: tracker == index
                          ? context.color.secondary
                          : context.color.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        navicons[index],
                        color: tracker == index
                            ? context.color.primary
                            : context.color.tertiary,
                        height: 25,
                      ),
                    ),
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
