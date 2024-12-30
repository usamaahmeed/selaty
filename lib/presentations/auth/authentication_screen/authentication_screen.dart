import 'package:flutter/material.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../login_screen/login_screen.dart';
import '../register_screen/register_screen.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

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
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          title: 'ســــــلتى',
                          fontSize: isPortrait ? fontR28 : fontR32,
                          fontWeight: FontWeight.bold,
                          fontColor: red,
                        ),
                        CustomText(
                          title: 'S E L A T Y',
                          fontSize: isPortrait ? fontR20 : fontR24,
                          fontWeight: FontWeight.bold,
                          fontColor: black,
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/png/logo.png',
                      width: isPortrait ? 100 : 130,
                      height: isPortrait ? 100 : 130,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButtom(
                  onPressed: () {
                    NavigatorHandler.push(LoginScreen());
                  },
                  name: 'تسجيل الدخول',
                  color: red,
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtom(
                  onPressed: () {
                    NavigatorHandler.push(RegisterScreen());
                  },
                  name: 'إنشئ حساب',
                  color: green,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
