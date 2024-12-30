import 'package:flutter/material.dart';
import 'package:selaty/core/app_colors/app_colors.dart';
import 'package:selaty/core/navigator/navigator.dart';
import 'package:selaty/presentations/home_screen/home_screen.dart';

import '../../widgets/custom_app_bar/custom_app_bar.dart';
import '../profile_screen/profile_screen.dart';

class MainScreen extends StatefulWidget {
  final int? index;

  const MainScreen({super.key, this.index});
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.index ?? 2; // Default to Home tab
  }

  // List of views for each navigation tab
  final List<Widget> _screens = [
    SearchView(),
    FavoriteView(),
    HomeScreen(),
    NotificationView(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // إذا كنت في الصفحة الرئيسية، دع النظام يغلق التطبيق
        if (_currentIndex == 2) {
          return true;
        } else {
          // إذا كنت في شاشة أخرى، عد إلى الصفحة الرئيسية
          setState(() {
            _currentIndex = 2; // العودة إلى الصفحة الرئيسية
          });
          return false; // لا تخرج من التطبيق
        }
      },
      child: Scaffold(
        backgroundColor: homeBg,
        appBar: _currentIndex == 4
            ? PreferredSize(
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
                              NavigatorHandler.pushAndRemoveUntil(MainScreen());
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
              )
            : CustomAppBar(
                bgColor: homeBg,
              ),
        body: _screens[_currentIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FloatingActionButton(
            elevation: 0.0, // إزالة الظل
            highlightElevation: 0.0,
            onPressed: () {
              setState(() {
                _currentIndex = 2; // Navigate to Home when FAB is pressed
              });
            },
            backgroundColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: CircleAvatar(
              radius: 23,
              backgroundColor: Color(0xFF407306),
              child: Image.asset('assets/images/png/logo.png', height: 30),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            color: Colors.white,
            notchMargin: 8.0,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildNavItem(icon: Icons.perm_identity_outlined, index: 4),
                  _buildNavItem(
                      icon: Icons.notifications_none_outlined, index: 3),
                  SizedBox(width: 48),
                  _buildNavItem(icon: Icons.favorite_border_outlined, index: 1),
                  _buildNavItem(icon: Icons.search, index: 0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildNavItem({required IconData icon, required int index}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Icon(
        icon,
        color: _currentIndex == index ? Colors.green : Colors.grey,
      ),
    );
  }
}

class SearchView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Search View"));
  }
}

class FavoriteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Favorite View"));
  }
}

class NotificationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Notification View"));
  }
}

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile View"));
  }
}
