import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grya_tix/screens/dashboard/dashboard_page.dart';
import 'package:grya_tix/screens/home/sign_in_page.dart';
import 'package:grya_tix/screens/test_tab_view.dart';
import 'package:grya_tix/screens/widgets/custom_button.dart';
import 'package:grya_tix/shared/app_color.dart';
import '../../../shared/app_dimensions.dart';
import '../../../shared/app_image.dart';
import '../../../shared/app_text_style.dart';

class OnboardingItem2 extends StatelessWidget {
  final String ilustrasi;
  final String title;
  final String deskripsi;
  final int currentIndex;
  const OnboardingItem2(
      {super.key,
      required this.ilustrasi,
      required this.title,
      required this.deskripsi,
      required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 35,
              bottom: fontSizeOverLarge,
            ),
            child: Image.asset(
              logoOnboarding,
              height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: padingSizeExtraLarge,
            ),
            child: Image.asset(
              ilustrasi,
              width: double.infinity,
              fit: BoxFit.cover,
              // height: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: fontSizeDefault,
            ),
            child: Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: fontSizeOverLarge,
                fontWeight: bold,
              ),
            ),
          ),
          Text(
            deskripsi,
            style: whiteTextStyle.copyWith(
              fontSize: fontSizeSemiLarge,
              fontWeight: medium,
            ),
            textAlign: TextAlign.center,
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(
                    padingSizeLarge, 170, padingSizeLarge, 0),
                child: CustomButton(
                  onTap: () => Get.to(() => DashboardPage()),
                  height: 60,
                  color: transparentColor,
                  border: Border.all(
                    color: whiteColor,
                  ),
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: fontSizeLarge,
                    fontWeight: bold,
                  ),
                  buttonText: 'Nanti Aja',
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(
                  padingSizeLarge,
                  padingSizeLarge,
                  padingSizeLarge,
                  padingSizeLarge,
                ),
                child: CustomButton(
                  onTap: () => Get.to(() => SignInPage()),
                  height: 60,
                  color: whiteColor,
                  textStyle: orangeTextStyle.copyWith(
                    fontSize: fontSizeLarge,
                    fontWeight: bold,
                  ),
                  buttonText: 'Login / Sign Up',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
