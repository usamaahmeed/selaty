import 'package:flutter/material.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/category_details.dart';

import '../../core/app_colors/app_colors.dart';
import '../../core/constants/constants.dart';
import '../../widgets/custom_app_bar/custom_app_bar.dart';
import '../../widgets/custom_text/custom_text.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //landscape
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isPortrait ? 2 : 4, // Number of columns in the grid
          crossAxisSpacing: 20.0, // Horizontal spacing between grid items
          mainAxisSpacing: 5.0, // Vertical spacing between grid items
          mainAxisExtent: 200, // Vertical spacing between grid items
          // childAspectRatio: 1.5,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              NavigatorHandler.push(CategoryDetails());
            },
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 180,
                    width: 180,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          child: Center(
                            child: CustomText(
                              title: 'فواكه',
                              fontSize: fontR20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 60,
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
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  top: 50,
                  child: Center(
                    child: CircleAvatar(
                      radius: 32,
                      backgroundColor: white,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.orange,
                        child: Image.asset(
                          'assets/images/png/category_icon.png',
                          height: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        padding: EdgeInsets.all(10.0),
      ),
    );
  }
}
