import 'package:flutter/material.dart';
import 'package:selaty/core/app_colors/app_colors.dart';
import 'package:selaty/widgets/custom_text/custom_text.dart';

import '../../core/constants/constants.dart';
import '../../core/navigator/navigator.dart';
import '../../widgets/custom_box_shadow/custom_box_shadow.dart';
import '../../widgets/custom_search/custom_search.dart';
import 'card_screen.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: homeBg,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Container(
                      height: 120,
                      color: green,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          right: 16,
                          left: 16,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildIconButton(
                                  Icons.camera_alt_outlined, () {}),
                              CustomText(
                                title: 'الفاكهه',
                                fontSize: 20,
                                fontColor: white,
                              ),
                              _buildIconButton(Icons.arrow_forward_ios_outlined,
                                  () {
                                Navigator.pop(context);
                              }),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 60,
                      color: homeBg,
                    ),
                  ],
                ),
                Positioned(
                  top: 75,
                  right: 0,
                  left: 0,
                  child: CircleAvatar(
                    radius: 46,
                    backgroundColor: white.withAlpha(100),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: white,
                      child: Image.asset(
                        'assets/images/png/fruit_icon.png',
                        height: 70,
                      ),
                    ),
                  ),
                ),
              ],
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
                  SizedBox(width: 10),
                  Expanded(
                    child: CustomSearchField(
                      controller: searchController,
                      onlyRead: true,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isPortrait ? 2 : 4, // Number of columns
                  crossAxisSpacing: 20.0,
                  mainAxisSpacing: 20.0,
                  mainAxisExtent: 240,
                ),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return _buildGridItem();
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconButton(IconData icon, VoidCallback onTap) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWell(
        onTap: onTap,
        child: Icon(icon, size: 20),
      ),
    );
  }

  Widget _buildGridItem() {
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
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 4),
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
  }
}
