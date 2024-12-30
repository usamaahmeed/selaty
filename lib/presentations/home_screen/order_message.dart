import 'package:flutter/material.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/navigation_bar.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';

class OrderMessage extends StatelessWidget {
  const OrderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: homeBg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomAppBar(
            title: 'عربة التسوق',
            titleCenter: true,
            fontColor: greyColor,
            bgColor: homeBg,
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
      body: isPortrait
          ? Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  height: 500,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/png/success_bag_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        title: 'طلبك تم بنجاح',
                        fontSize: fontR20,
                        fontColor: white,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        title: 'شكرا لاختيارك سيلاتي ستصلك طلبيتك قريبا',
                        fontColor: white,
                        fontSize: fontR14,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: CustomButtom(
                            color: black.withAlpha(200),
                            name: 'تم',
                            onPressed: () {
                              NavigatorHandler.pushAndRemoveUntil(MainScreen());
                            }),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Container(
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/images/png/success_bag_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomText(
                        title: 'طلبك تم بنجاح',
                        fontSize: fontR18,
                        fontColor: white,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        title: 'شكرا لاختيارك سيلاتي ستصلك طلبيتك قريبا',
                        fontColor: white,
                        fontSize: fontR12,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 20),
                        child: Container(
                          height: 40,
                          child: CustomButtom(
                            color: black.withAlpha(200),
                            name: 'تم',
                            onPressed: () {
                              NavigatorHandler.pushAndRemoveUntil(MainScreen());
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
