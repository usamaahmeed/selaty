import 'package:flutter/material.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../core/navigator/navigator.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import 'layout_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    checkUserStatus();
  }

  Future<void> checkUserStatus() async {
    Future.delayed(Duration(milliseconds: 1500), () {
      NavigatorHandler.pushAndRemoveUntil(OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      backgroundColor: bg,
      appBar: CustomAppBar(),
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
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/png/logo.png',
                  width: 200,
                  height: 200,
                ),
                CustomText(
                  title: 'ســــــــلتي',
                  fontSize: fontR28,
                  fontWeight: FontWeight.bold,
                  fontColor: red,
                ),
                CustomText(
                  title: 'S E L A T Y',
                  fontSize: fontR24,
                  fontWeight: FontWeight.bold,
                  fontColor: black,
                ),
                SizedBox(height: orientation == Orientation.portrait ? 50 : 10),
                const CircularProgressIndicator(
                  color: green,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
