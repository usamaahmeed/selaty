import 'package:flutter/material.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../../widgets/custom_button/custom_button.dart';
import '../../../widgets/custom_text_form/custom_text_form.dart';
import 'confirm_massage.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordNewController = TextEditingController();
  bool isPasswordVisible = false;
  bool isPasswordVisibleTwo = false;

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
              title: 'تغير كلمة المرور',
              titleCenter: true,
              fontColor: greyColor,
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
                SizedBox(height: 20),
                Center(
                  child: CustomText(
                    title: 'ادخل كلمة المرور الجديدة',
                    fontSize: 18,
                    fontColor: greyColor,
                  ),
                ),
                SizedBox(height: 70),
                CustomTextFormField(
                  label: 'كلمة المرور جديدة',
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
                SizedBox(height: 20),
                CustomTextFormField(
                  label: 'تاكيد كلمة المرور',
                  obscureText: !isPasswordVisibleTwo,
                  textInputType: TextInputType.number,
                  lableColors: greyColor,
                  controller: passwordNewController,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isPasswordVisibleTwo = !isPasswordVisibleTwo;
                      });
                    },
                    child: Icon(isPasswordVisibleTwo
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
                SizedBox(height: 30),
                Center(
                  child: CustomButtom(
                    name: 'تغير كلمة المرور',
                    onPressed: () {
                      NavigatorHandler.push(ConfirmMassage());
                    },
                  ),
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
