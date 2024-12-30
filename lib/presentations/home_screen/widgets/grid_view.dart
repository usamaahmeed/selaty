import 'package:flutter/material.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/card_screen.dart';

import '../../../../../core/app_colors/app_colors.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../widgets/custom_box_shadow/custom_box_shadow.dart';
import '../../../../../widgets/custom_text/custom_text.dart';

class CustomProductsGridView extends StatelessWidget {
  const CustomProductsGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
        padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // صف واحد فقط
          crossAxisSpacing: 15,
          mainAxisSpacing: 20,
          mainAxisExtent: 160, // عرض العنصر
        ),
        itemCount: 16,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              NavigatorHandler.push(CardScreen());
            },
            child: Container(
              height: 250,
              width: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    spreadRadius: 2,
                    blurRadius: 1,
                    offset: Offset(1, 3),
                  ),
                ],
                color: white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 19,
                          width: 33,
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              bottomLeft: Radius.circular(5),
                            ),
                          ),
                          child: CustomText(
                            fontColor: white,
                            textAlign: TextAlign.center,
                            title: 'جديد',
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.favorite,
                          color: green,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/png/fruits.png',
                      height: 100,
                      width: 120,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      padding: const EdgeInsets.only(right: 5),
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: CustomText(
                        textAlign: TextAlign.start,
                        title: 'فواكه',
                        fontColor: white,
                        fontSize: fontR12,
                        maxLines: 1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CustomText(
                      textAlign: TextAlign.start,
                      title: 'طبق فواكه',
                      fontColor: greyColor,
                      fontSize: fontR10,
                      maxLines: 1,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CustomText(
                      textAlign: TextAlign.start,
                      title: 'Kg 1',
                      fontColor: greyColor,
                      fontSize: fontR10,
                      maxLines: 1,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, bottom: 4),
                    decoration: BoxDecoration(
                      color: Color(0xffF6F6F6),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(8),
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    height: 32,
                    child: Row(
                      children: [
                        CustomText(
                          title: 'EGP',
                          fontColor: textColor,
                          fontSize: fontR12,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        CustomText(
                          title: '40',
                          fontColor: textColor,
                          fontSize: fontR17,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Spacer(),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: bottomColor,
                          child: const Icon(
                            Icons.add_box_outlined,
                            color: white,
                            size: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomBoxShadow(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
