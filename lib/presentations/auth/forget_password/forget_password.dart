import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/presentations/auth/forget_password/otp_screen.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController phoneController = TextEditingController();
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
                  title:
                      'لقد قمنا بإرسال رسالفة نصية قصيره تحتوي على كود التحقق إلى رقم 01066282081',
                  fontSize: 18,
                  fontColor: greyColor,
                ),
                SizedBox(
                  height: 80,
                ),
                IntlPhoneField(
                  controller: phoneController,
                  keyboardType: TextInputType.phone,

                  decoration: InputDecoration(
                    hintText: 'رقم الهاتف',
                    hintStyle: TextStyle(
                      color: greyColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: inputBoxColor),
                        borderRadius: BorderRadius.circular(12)),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: greyColor),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  initialCountryCode: 'EG', // Egypt

                  onChanged: (phone) {
                    print(phone.completeNumber);
                  },
                  inputFormatters: [LengthLimitingTextInputFormatter(11)],
                  disableLengthCheck: true,
                ),
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomButtom(
                      name: 'تاكيد',
                      onPressed: () {
                        NavigatorHandler.push(OtpScreen());
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
