import 'package:flutter/material.dart';
import 'package:selaty/core/app_colors/app_colors.dart';
import 'package:selaty/presentations/splash_screen/widgets/OnboardingScreenOne.dart';
import 'package:selaty/presentations/splash_screen/widgets/OnboardingScreenThree.dart';
import 'package:selaty/presentations/splash_screen/widgets/OnboardingScreenTwo.dart';
import 'package:selaty/widgets/custom_app_bar/app.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController(initialPage: 0);

  // قائمة الألوان للدائرة النشطة لكل صفحة
  final List<Color> activeDotColors = [
    Colors.red,
    Colors.green,
    Color(0xff736C8B),
  ];

  int activeIndex = 0; // الصفحة الحالية

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppar(),
      body: Stack(
        children: [
          Positioned(
            bottom: -80,
            right: -60,
            child: Opacity(
              opacity: 0.2,
              child: Image.asset('assets/images/png/logo.png',
                  width: 250, height: 250),
            ),
          ),
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(
                    child: PageView(
                      controller: _controller,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (index) {
                        setState(() {
                          activeIndex = index; // تحديث الصفحة الحالية
                        });
                      },
                      children: [
                        OnboardingScreenOne(
                            orientation: orientation,
                            controller: _controller,
                            activeDotColors: activeDotColors,
                            activeIndex: activeIndex),
                        OnboardingScreenTwo(
                            orientation: orientation,
                            controller: _controller,
                            activeDotColors: activeDotColors,
                            activeIndex: activeIndex),
                        OnboardingScreenThree(
                            orientation: orientation,
                            controller: _controller,
                            activeDotColors: activeDotColors,
                            activeIndex: activeIndex),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
