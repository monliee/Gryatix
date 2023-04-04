import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:grya_tix/screens/home/home_page.dart';
import 'package:grya_tix/screens/home/sign_in_page.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_text_style.dart';

class MyTiketPage extends StatefulWidget {
  const MyTiketPage({super.key});

  @override
  State<MyTiketPage> createState() => _MyTiketPageState();
}

class _MyTiketPageState extends State<MyTiketPage> {
  bool isshow = true;
  bool ishide = false;
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: orangeColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'My Ticket',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
        ],
      );
    }

    Widget alertView() {
      return Visibility(
        visible: ishide,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 45,
            right: 45,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/ilustrasi_login.png',
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Kamu belum login',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Login sekarang dan pesan tiketmu untuk perjalanan terbaik',
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget alertView2() {
      return Visibility(
        visible: isshow,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 30,
            left: 45,
            right: 45,
          ),
          child: Column(
            children: [
              Image.asset(
                'assets/ilustrasi_tiket.png',
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                'Belum ada perjalanan?',
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                'Yuk mulai perjalananmu dengan kami Gryatix juga gratis konsultasi lho',
                textAlign: TextAlign.center,
                style: blackTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buttonView() {
      return Visibility(
        visible: ishide,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const SignInPage());
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Login Sekarang',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isshow = !isshow;
                      ishide = !ishide;
                    });
                    print(isshow);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: transparentColor,
                    side: const BorderSide(
                      color: orangeColor,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Nanti Saja',
                    style: orangeTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget buttonView2() {
      return Visibility(
        visible: isshow,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const HomePage());
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: orangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Text(
                    'Pesan Tiket Sekarang',
                    style: whiteTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      isshow = !isshow;
                      ishide = !ishide;
                    });
                    print(isshow);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: transparentColor,
                    side: const BorderSide(
                      color: greyTextColor,
                      width: 1,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.chat,
                        color: blackColor,
                        size: 30.0,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Pesananmu tidak ada? ',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const HomePage());
                        },
                        child: Text(
                          'Hubungi Kami',
                          style: orangeTextStyle.copyWith(
                            fontSize: 12,
                            fontWeight: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            alertView(),
            alertView2(),
            buttonView(),
            buttonView2(),
          ],
        ),
      ),
    );
  }
}
