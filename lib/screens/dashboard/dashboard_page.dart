import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grya_tix/screens/message/message_page.dart';
import 'package:grya_tix/screens/mytiket/my_tiket_page.dart';
import 'package:grya_tix/screens/profile/profile_page.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_image.dart';
import 'package:grya_tix/shared/app_text_style.dart';

import '../../shared/app_dimensions.dart';
import '../home/home_page.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});
  final RxInt currentIndex = 0.obs;
  void changeCurrentIndex(int index) {
    currentIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return Obx(
        () => BottomNavigationBar(
          selectedFontSize: 0,
          unselectedFontSize: 0,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex.value,
          onTap: (value) {
            changeCurrentIndex(value);
            print(currentIndex.value);
          },
          items: [
            bottomNavBarItem(
              title: 'Home',
              icon: iconHomeUnselected,
              iconActive: iconHomeSelected,
            ),
            bottomNavBarItem(
              title: 'My Ticket',
              icon: iconTiketUnselected,
              iconActive: iconTiketSelected,
            ),
            bottomNavBarItem(
              title: 'Message',
              icon: iconMessageUnselected,
              iconActive: iconMessageSelected,
            ),
            bottomNavBarItem(
              title: 'Profile',
              icon: iconProfileUnselected,
              iconActive: iconProfileSelected,
            ),
          ],
        ),
      );
    }

    Widget body() {
      switch (currentIndex.value) {
        case 0:
          return HomePage();

        case 1:
          return const MyTiketPage();

        case 2:
          return const MessagePage();

        case 3:
          return const ProfilePage();

        default:
          return HomePage();
      }
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: Obx(
        () => body(),
      ),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  BottomNavigationBarItem bottomNavBarItem({
    required String title,
    required String icon,
    required String iconActive,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: padingSizeSmall,
        ),
        child: Column(
          children: [
            Image.asset(
              icon,
              height: 26,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: greyTextStyle.copyWith(
                fontSize: fontExtraSmallSize,
              ),
            )
          ],
        ),
      ),
      activeIcon: Column(
        children: [
          Image.asset(
            iconActive,
            height: 26,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: bold,
              fontSize: fontExtraSmallSize,
            ),
          )
        ],
      ),
      label: '',
    );
  }
}
