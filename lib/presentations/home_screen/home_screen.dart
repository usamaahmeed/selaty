import 'package:flutter/material.dart';
import 'package:selaty/core/constants/constants.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/widgets/grid_view.dart';
import 'package:selaty/presentations/home_screen/widgets/slider_widget.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../../../core/app_colors/app_colors.dart';
import '../../../../widgets/custom_box_shadow/custom_box_shadow.dart';
import '../../../../widgets/custom_search/custom_search.dart';
import 'category_screen.dart';
import 'navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    //is landscape
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      NavigatorHandler.pushReplacement(MainScreen(
                        index: 4,
                      ));
                    },
                    child: CircleAvatar(
                      backgroundColor: white,
                      radius: 25,
                      child: CircleAvatar(
                        radius: 23,
                        backgroundImage:
                            AssetImage('assets/images/png/person.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      CustomText(
                        title: 'اسامه احمد',
                        fontSize: fontR18,
                      ),
                      CustomText(
                        title: 'المنوفية شبين الكوم',
                        fontSize: fontR14,
                        fontColor: greyColor,
                      ),
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: InkWell(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 20,
                      ),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.menu_outlined,
                        size: 30,
                        color: white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      child: CustomSearchField(
                        controller: searchController,
                        onlyRead: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomText(
                    title: 'القيمه الافضل',
                    fontSize: fontR18,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  CustomText(
                    title: 'اعلى المبيعات',
                    fontColor: greyColor,
                    fontSize: fontR12,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_left_outlined,
                        color: greyColor,
                      ),
                      CustomText(
                        title: 'مشاهده الكل',
                        fontSize: fontR12,
                        fontColor: greyColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SliderWidget(),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomText(
                    title: 'التصنيفات',
                    fontSize: fontR18,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      NavigatorHandler.push(CategoryScreen());
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_left_outlined,
                          color: greyColor,
                        ),
                        CustomText(
                          title: 'مشاهده الكل',
                          fontSize: fontR12,
                          fontColor: greyColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          width: 80,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 60,
                                child: Center(
                                  child: CustomText(
                                    title: 'فواكه',
                                    fontSize: fontR12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/png/fruits_category.jpg'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 0,
                          left: 0,
                          top: 15,
                          child: Center(
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: white,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: Colors.orange,
                                child: Image.asset(
                                  'assets/images/png/category_icon.png',
                                  scale: 3,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 10),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomText(
                    title: 'الأكثر مبيعا',
                    fontSize: fontR18,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_left_outlined,
                        color: greyColor,
                      ),
                      CustomText(
                        title: 'مشاهده الكل',
                        fontSize: fontR12,
                        fontColor: greyColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomProductsGridView(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/png/fruits_img.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomText(
                    title: 'تسوق حسب العروض',
                    fontSize: fontR18,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_left_outlined,
                        color: greyColor,
                      ),
                      CustomText(
                        title: 'مشاهده الكل',
                        fontSize: fontR12,
                        fontColor: greyColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xffC460DA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'عرض',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                          CustomText(
                            title: '30%',
                            fontSize: isPortrait ? fontR24 : fontR28,
                            fontColor: black,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: 'خصم',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xff35A2FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'عرض',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                          CustomText(
                            title: '40%',
                            fontSize: isPortrait ? fontR24 : fontR28,
                            fontColor: black,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: 'خصم',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xffFF5556),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'عرض',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                          CustomText(
                            title: '50%',
                            fontSize: isPortrait ? fontR24 : fontR28,
                            fontColor: black,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            title: 'خصم',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xffEA9A20),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'اشترى 1',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                          CustomText(
                            title: 'واحصل على 1',
                            fontSize: isPortrait ? fontR14 : fontR18,
                            fontColor: white,
                          ),
                          CustomText(
                            title: 'مجانا',
                            fontSize: fontR24,
                            fontColor: white,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xff849C3E),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'اقل',
                            fontSize: fontR24,
                            fontColor: white,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomText(
                                title: 'SAR',
                                fontSize: fontR24,
                                fontColor: white,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CustomText(
                                title: '99',
                                fontSize: fontR24,
                                fontColor: black,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      height: isPortrait ? 100 : 150,
                      decoration: BoxDecoration(
                        color: Color(0xff24B4AA),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: isPortrait
                            ? MainAxisAlignment.spaceEvenly
                            : MainAxisAlignment.center,
                        children: [
                          CustomText(
                            title: 'اختيارات',
                            fontSize: fontR24,
                            fontColor: white,
                          ),
                          CustomText(
                            title: 'الشهر',
                            fontSize: fontR24,
                            fontColor: white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CustomText(
                title: 'طازج وسريع',
                fontSize: fontR18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomProductsGridView(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  color: white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/png/fruits_img.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  CustomText(
                    title: 'انتهز الفرصه',
                    fontSize: fontR18,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_left_outlined,
                        color: greyColor,
                      ),
                      CustomText(
                        title: 'مشاهده الكل',
                        fontSize: fontR12,
                        fontColor: greyColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              child: ListView.separated(
                  padding: const EdgeInsets.only(bottom: 8, left: 8, right: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          height: 250,
                          width: 100,
                          decoration: BoxDecoration(
                            color: white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.05),
                                spreadRadius: 2,
                                blurRadius: 1,
                                offset: Offset(1, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomText(
                                      title: 'طبق فواكه',
                                      fontSize: fontR10,
                                      fontColor: greyColor,
                                    ),
                                    CustomText(
                                      title: 'خصم 25% بدون فوائد',
                                      fontSize: 8,
                                      fontColor: black,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                child: Image.asset(
                                  'assets/images/png/fruits.png',
                                  height: 80,
                                  width: 120,
                                ),
                              ),
                              Spacer(),
                              Container(
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, bottom: 4),
                                decoration: BoxDecoration(
                                  color: Color(0xffF6F6F6),
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(8),
                                    bottomLeft: Radius.circular(8),
                                  ),
                                ),
                                height: 20,
                              ),
                              CustomBoxShadow(),
                            ],
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 100,
                          right: 5,
                          child: CircleAvatar(
                            radius: 8,
                            backgroundColor: red,
                            child: Center(
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: white,
                                size: 10,
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 10),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
