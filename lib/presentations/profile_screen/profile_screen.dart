import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../core/dimens/dimens.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'اسامه احمد',
                            fontColor: white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: 'osamaahmed@gmail.com',
                            fontColor: white,
                            fontSize: 20,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: white.withAlpha(100),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/png/person.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            isPortrait
                ? Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: isPortrait ? 10 : 20,
            ),
            isPortrait
                ? Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            isPortrait
                ? Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                        height: 100,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: red,
                              size: 35,
                            ),
                            CustomText(
                              title: 'اسامه',
                              fontColor: black,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                color: red,
                                size: 35,
                              ),
                              CustomText(
                                title: 'اسامه',
                                fontColor: black,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            isPortrait
                ? Row(
                    children: [
                      Expanded(
                          child: Container(
                        height: 120,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: white.withAlpha(100),
                              ),
                              child: Icon(
                                Icons.exit_to_app_outlined,
                                color: white,
                                size: 35,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              title: 'خروج',
                              fontColor: white,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Container(
                        height: 120,
                        width: Dimens.width * 0.5,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: white.withAlpha(100),
                              ),
                              child: Icon(
                                CupertinoIcons.question_square,
                                color: white,
                                size: 35,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomText(
                              title: 'مركز الدعم',
                              fontColor: white,
                              fontSize: 20,
                            ),
                          ],
                        ),
                      )),
                    ],
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: green,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: white.withAlpha(100),
                                ),
                                child: Icon(
                                  Icons.exit_to_app_outlined,
                                  color: white,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                title: 'خروج',
                                fontColor: white,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: white.withAlpha(100),
                                ),
                                child: Icon(
                                  CupertinoIcons.question_square,
                                  color: white,
                                  size: 35,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              CustomText(
                                title: 'مركز الدعم',
                                fontColor: white,
                                fontSize: 20,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
