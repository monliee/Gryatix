import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grya_tix/screens/onboarding/widget/onboarding_item.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_image.dart';

import 'widget/onboarding_item_2.dart';

class OnboadingPage extends StatelessWidget {
  OnboadingPage({super.key});
  final RxInt currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    // final mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: topOrangeGradient,
        ),
        child: SafeArea(
          child: Obx(
            () => Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                      height: double.infinity,
                      viewportFraction: 1,
                      enableInfiniteScroll: false,
                      initialPage: currentIndex.value,
                      onPageChanged: (index, _) {
                        currentIndex.value = index;
                      }),
                  // carouselController: controller,

                  items: [
                    OnboardingItem(
                      currentIndex: currentIndex.value,
                      ilustrasi: onboarding_1,
                      title: 'Pingin liburan enjoy?',
                      deskripsi:
                          'Selamat datang di aplikasi ASN Trans,\ndimana kami bisa mempersiapkan segala\nkebutuhan untuk liburanmu',
                    ),
                    OnboardingItem(
                      currentIndex: currentIndex.value,
                      ilustrasi: onboarding_2,
                      title: 'Tapi gimana caranya?',
                      deskripsi:
                          'Konsultasikan liburanmu dengan kami,\ndan biarkan kami yang mempersiapkan\nsegala kebutuhannya',
                    ),
                    OnboardingItem2(
                      currentIndex: currentIndex.value,
                      ilustrasi: onboarding_3,
                      title: 'Mudah banget kan?',
                      deskripsi:
                          'Kamu tinggal duduk dan nikmati\nperjalanan ternyamanmu, biar\nliburanmu makin berkesan',
                    ),
                  ],
                ),
                // currentIndex.value == 2
                //     ? const SizedBox()
                //     :
                Padding(
                  padding: const EdgeInsets.only(
                    top: 520,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: currentIndex.value == 0 ? 10 : 5,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex.value == 0 ? whiteColor : redColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: currentIndex.value == 1 ? 10 : 5,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex.value == 1 ? whiteColor : redColor,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        width: currentIndex.value == 2 ? 10 : 5,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              currentIndex.value == 2 ? whiteColor : redColor,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
