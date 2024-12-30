import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/app_colors/app_colors.dart';
import '../../../core/constants/constants.dart';
import '../../../widgets/custom_text/custom_text.dart';

class OnboardingScreenOne extends StatelessWidget {
  const OnboardingScreenOne({
    super.key,
    required this.orientation,
    required PageController controller,
    required this.activeDotColors,
    required this.activeIndex,
  }) : _controller = controller;

  final Orientation orientation;
  final PageController _controller;
  final List<Color> activeDotColors;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: orientation == Orientation.portrait
          ? NeverScrollableScrollPhysics()
          : BouncingScrollPhysics(),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: orientation == Orientation.portrait ? 60 : 10,
            ),
            Center(
              child: CircleAvatar(
                radius: orientation == Orientation.portrait ? 150 : 120,
                backgroundColor: Color(0xffFEEBED),
                child: CircleAvatar(
                  radius: orientation == Orientation.portrait ? 120 : 90,
                  backgroundColor: Color(0xffFAB8BC),
                  child: CircleAvatar(
                    radius: orientation == Orientation.portrait ? 90 : 60,
                    backgroundColor: Color(0xffEF3F4C),
                    child: Image.asset(
                      'assets/images/png/shop.png',
                      width: orientation == Orientation.portrait ? 100 : 70,
                      height: orientation == Orientation.portrait ? 100 : 70,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: orientation == Orientation.portrait ? 70 : 30,
            ),
            CustomText(
              title: 'البحث بالقرب منك',
              fontSize: fontR28,
              fontWeight: FontWeight.bold,
              fontColor: Color(0xffEF3F4C),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: orientation == Orientation.portrait
                  ? 300
                  : MediaQuery.of(context).size.width,
              child: CustomText(
                title: 'ابحث عن المتاجر المفضله التى تريدها بموقعك او حيك',
                fontSize: fontR20,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: CustomizableEffect(
                    activeDotDecoration: DotDecoration(
                      width: 12,
                      height: 12,
                      color: activeDotColors[activeIndex], // لون الدائرة النشطة
                      borderRadius: BorderRadius.circular(6),
                    ),
                    dotDecoration: DotDecoration(
                      width: 12,
                      height: 12,
                      color: Colors.grey, // لون الدوائر غير النشطة
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onDotClicked: (index) {
                    _controller.animateToPage(
                      index,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    _controller.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffEF3F4C),
                    child: Icon(
                      Icons.arrow_forward_outlined,
                      color: white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
