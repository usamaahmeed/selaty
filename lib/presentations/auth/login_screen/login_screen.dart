import 'package:flutter/material.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/constants/constants.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/custom_text/custom_text.dart';
import '../../../widgets/custom_text_form/custom_text_form.dart';
import '../../home_screen/navigation_bar.dart';
import '../forget_password/forget_password.dart';
import '../register_screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xffFDFDFF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: CustomAppBar(
              bgColor: Color(0xffFDFDFF),
              showToolBar: true,
              actions: [
                Container(
                  height: 40,
                  width: 40,
                  padding: EdgeInsets.all(1),
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xffE2E2E2),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: InkWell(
                      child: Icon(Icons.arrow_forward_ios_outlined),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                )
              ],
              leading: Container(
                padding: EdgeInsets.all(1),
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xffE2E2E2),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: InkWell(
                    child: Icon(Icons.camera_alt_outlined),
                    onTap: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CustomText(
                          title: 'ســـــلتى',
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
                SizedBox(height: 30),
                CustomTextFormField(
                  label: 'عنوان البريد الإلكتروني',
                  textInputType: TextInputType.emailAddress,
                  lableColors: greyColor,
                  controller: emailController,
                  suffixIcon: Icon(
                    Icons.check_circle_outline,
                    color: green,
                  ),
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  label: 'كلمة المرور',
                  obscureText: !isPasswordVisible,
                  textInputType: TextInputType.number,
                  lableColors: greyColor,
                  controller: passwordController,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                    child: Icon(isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 8),
                InkWell(
                  onTap: () {
                    NavigatorHandler.push(ForgetPassword());
                  },
                  child: CustomText(
                    title: 'هل نسيت كلمة السر ؟',
                    fontSize: fontR14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: CustomButtom(
                    name: 'تسجيل الدخول',
                    onPressed: () {
                      NavigatorHandler.pushAndRemoveUntil(MainScreen());
                    },
                  ),
                ),
                SizedBox(height: 90),
                Row(
                  children: [
                    CustomText(
                      title: ' ليس لديك حساب؟ ',
                      fontSize: fontR20,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        NavigatorHandler.pushReplacement(RegisterScreen());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_left_outlined),
                          CustomText(
                            title: 'إنشئ حساب',
                            fontSize: fontR20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
