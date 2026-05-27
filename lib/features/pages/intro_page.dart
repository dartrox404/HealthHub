import 'package:flutter/material.dart';
import 'package:health_hub/features/pages/disease_page.dart';
import 'package:health_hub/features/pages/homepage.dart';
import 'package:health_hub/features/pages/symptoms_page.dart';
import 'package:health_hub/features/widgets/custom_bottom_nav_bar.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            children: [Homepage(), SymptomsPage(), DiseasePage()],
          ),
          CustomBottomNavBar(),
        ],
      ),
    );
  }
}
