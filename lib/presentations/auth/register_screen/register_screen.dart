import 'package:flutter/material.dart';
import 'package:selaty/core/constants/constants.dart';
import 'package:selaty/presentations/auth/login_screen/login_screen.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';
import 'package:selaty/widgets/custom_text_form/custom_text_form.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../home_screen/navigation_bar.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
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
                SizedBox(height: 30),
                CustomText(
                  title: 'أنشاء حساب جديد',
                  fontSize: fontR24,
                  fontWeight: FontWeight.bold,
                  fontColor: black,
                ),
                SizedBox(height: 8),
                CustomText(
                  title: 'أدخل بياناتك الشخصية لإنشاء حساب ',
                  fontSize: fontR18,
                  fontColor: greyColor,
                ),
                SizedBox(height: 40),
                CustomTextFormField(
                  label: 'الاسم',
                  textInputType: TextInputType.text,
                  lableColors: greyColor,
                  controller: nameController,
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 40),
                Center(
                  child: CustomButtom(
                    name: 'اشتراك',
                    onPressed: () {
                      NavigatorHandler.pushAndRemoveUntil(MainScreen());
                    },
                  ),
                ),
                SizedBox(height: 20),
                Center(
                  child: CustomText(
                    title: 'أو اشترك مع',
                    fontSize: fontR20,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      child: CustomButtom(
                        name: 'FaceBook',
                        color: Color(0xff3B5998),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 150,
                      child: CustomButtom(
                        name: 'GooGle',
                        color: Color(0xffDB4437),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 70),
                Row(
                  children: [
                    CustomText(
                      title: ' لديك حساب بالفعل؟ ',
                      fontSize: fontR20,
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        NavigatorHandler.pushReplacement(LoginScreen());
                      },
                      child: Row(
                        children: [
                          Icon(Icons.arrow_left_outlined),
                          CustomText(
                            title: 'تسجيل الدخول',
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
