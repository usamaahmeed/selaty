import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:selaty/presentations/auth/forget_password/change_password.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();
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
              title: 'تحقق من رقم الهاتف',
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
                CustomText(
                  title: 'أدخل رمز OTP الخاص بك هنا',
                  fontSize: 18,
                  fontColor: greyColor,
                ),
                SizedBox(
                  height: 80,
                ),
                Center(
                  child: Pinput(
                    //controller: _otpController,

                    controller: otpController,
                    length: 4, // Set OTP length
                    onChanged: (value) {
                      print('OTP Entered: $value');
                    },
                    defaultPinTheme: PinTheme(
                      width: 80,
                      height: 80,
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: greyColor),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    focusedPinTheme: PinTheme(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: green),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomText(
                  title: 'لم يصل الكود؟',
                  fontSize: 18,
                  fontColor: greyColor,
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  title: 'إعادة إرسال الكود',
                  fontSize: 18,
                  fontColor: red,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomButtom(
                      name: 'تاكيد',
                      onPressed: () {
                        NavigatorHandler.push(ChangePassword());
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
