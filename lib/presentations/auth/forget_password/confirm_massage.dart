import 'dart:math';

import 'package:flutter/material.dart';
import 'package:selaty/core/app_colors/app_colors.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../core/navigator/navigator.dart';
import '../../../widgets/custom_app_bar/custom_app_bar.dart';
import '../authentication_screen/authentication_screen.dart';

class ConfirmMassage extends StatelessWidget {
  const ConfirmMassage({super.key});

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: CustomAppBar(
        bgColor: Color(0xff2AC17E),
      ),
      backgroundColor: Color(0xff2AC17E),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          physics: orientation == Orientation.portrait
              ? NeverScrollableScrollPhysics()
              : BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              orientation == Orientation.portrait
                  ? SizedBox(height: 200)
                  : SizedBox(),
              CustomPaint(
                size: Size(300, 300),
                painter: DashedCirclePainter(),
                child: Container(
                  width: 300,
                  padding: EdgeInsets.all(60),
                  child: Image.asset(
                    'assets/images/png/key.png',
                  ),
                ),
              ),
              SizedBox(height: 40),
              CustomText(
                title: 'تم تغير كلمة المرور الخاصة بك بنجاح ',
                fontSize: 20,
                fontColor: Colors.white,
              ),
              SizedBox(height: 40),
              CustomButtom(
                textColor: red,
                color: white,
                name: 'تم',
                onPressed: () {
                  NavigatorHandler.pushAndRemoveUntil(AuthenticationScreen());
                },
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke;

    const dashWidth = 5; // عرض الشرطات
    const dashSpace = 5; // المسافة بين الشرطات
    final radius = size.width / 2; // نصف قطر الدائرة
    double angle = 0.0; // زاوية البداية

    while (angle < 2 * 3.141592653589793) {
      // حساب إحداثيات بداية ونهاية كل شرطة
      final startX = radius + radius * cos(angle);
      final startY = radius + radius * sin(angle);
      final endX = radius + radius * cos(angle + dashWidth / radius);
      final endY = radius + radius * sin(angle + dashWidth / radius);

      // رسم الشرطة
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);

      // زيادة الزاوية
      angle += (dashWidth + dashSpace) / radius;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
