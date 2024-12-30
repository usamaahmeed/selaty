import 'package:flutter/material.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/order_message.dart';
import 'package:selaty/widgets/custom_button/custom_button.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({super.key});

  @override
  State<DeliveryAddress> createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  // تحديد العنصر الافتراضي الأول كـ true
  int defaultIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBg,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomAppBar(
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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'يشحن إلى',
              fontColor: greyColor,
              fontSize: fontR14,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                padding: const EdgeInsets.only(bottom: 10),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    height: 180,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 25,
                          width: 50,
                          child: Center(
                            child: CustomText(
                              title: 'افتراضى',
                              fontWeight: FontWeight.bold,
                              fontSize: fontR12,
                              fontColor: green,
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: green.withAlpha(80),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              activeColor: green,
                              value: index == defaultIndex,
                              onChanged: (value) {
                                setState(() {
                                  if (value == true) {
                                    defaultIndex = index;
                                  }
                                });
                              },
                            ),
                            CustomText(
                              title: 'المنزل',
                              fontSize: fontR18,
                              maxLines: 1,
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        CustomText(
                          title: 'العنوان: شارع النيل - الدقى - الجيزة',
                          fontSize: fontR14,
                          maxLines: 1,
                        ),
                        CustomText(
                          title:
                              'العنوان: شارع النيل - الدقى - الجيزة ششششششششششششششششششش',
                          fontSize: fontR14,
                          maxLines: 1,
                        ),
                        CustomText(
                          title: 'الدقى - الجيزة',
                          fontSize: fontR14,
                          maxLines: 1,
                        ),
                        SizedBox(height: 8),
                        CustomText(
                          title: 'جوال: 01000000000',
                          fontSize: fontR14,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 10);
                },
                itemCount: 10,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: double.infinity,
              child: CustomButtom(
                name: 'التسليم لهذا العنوان',
                onPressed: () {
                  NavigatorHandler.push(OrderMessage());
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
