import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grya_tix/screens/home/booking_hotel_page.dart';
import 'package:grya_tix/screens/home/tiket_bis_page.dart';

import 'package:grya_tix/screens/home/widget/menu_item.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_dimensions.dart';
import 'package:grya_tix/shared/app_image.dart';
import 'package:grya_tix/shared/app_text_style.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(
              gradient: topOrangeGradient,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padingSizeDefault),
            child: Row(
              children: [
                const SizedBox(
                  height: 120,
                ),
                Expanded(
                  child: Container(
                    height: 35,
                    padding: const EdgeInsets.only(
                      left: 13,
                      top: 4,
                    ),
                    decoration: BoxDecoration(
                        color: whiteColor.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(
                          radiusDefault,
                        ),
                        border: Border.all(color: whiteColor)),
                    child: TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search',
                        hintStyle: whiteTextStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(
                        left: 7,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 6,
                        horizontal: padingSizeDefault,
                      ),
                      decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(radiusDefault)),
                      child: Text(
                        'promo',
                        style: orangeTextStyle.copyWith(
                          fontWeight: bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 15,
                      height: 15,
                      margin: const EdgeInsets.only(left: 78),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: redColor,
                          border: Border.all(
                            color: whiteColor,
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 85,
            ),
            child: Image.asset(
              bannerHome,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.fromLTRB(
              padingSizeLarge,
              175,
              padingSizeLarge,
              0,
            ),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(
                radiusDefault,
              ),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 4),
                  color: blackColor.withOpacity(0.1),
                  spreadRadius: 3,
                  blurRadius: 5,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 12,
                    right: 10,
                  ),
                  child: Image.asset(
                    iconDollarOrange,
                    width: 21,
                    height: 21,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GTX Points',
                      style: blackTextStyle.copyWith(
                        fontSize: fontExtraSmallSize,
                      ),
                    ),
                    Text(
                      'Daftar dan lengkapi profilmu & dapatkan 1000 point!',
                      style: orangeTextStyle.copyWith(
                        fontSize: fontExtraSmallSize,
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    Widget menuItemView() {
      return GridView(
        padding: const EdgeInsets.only(
          left: padingSizeSmall,
          top: 22,
          right: padingSizeSmall,
        ),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 0.85,
        ),
        children: [
          GestureDetector(
            onTap: () {
              Get.to(() => const TiketBisPage());
            },
            child: const MenuItemCard(
              icon: iconTiketBis,
              title: 'Tiket Bis',
            ),
          ),
          const MenuItemCard(
            icon: iconTiketKereta,
            title: 'Tiket Kereta',
          ),
          const MenuItemCard(
            icon: iconTiketPesawat,
            title: 'Tiket Pesawat',
          ),
          const MenuItemCard(
            icon: iconTiketWisata,
            title: 'Tiket Wisata',
          ),
          const MenuItemCard(
            icon: iconBisParwis,
            title: 'Bis Pariwisata',
          ),
          const MenuItemCard(
            icon: iconRentalMobil,
            title: 'Rental Mobil',
          ),
          const MenuItemCard(
            icon: iconBokingTravel,
            title: 'Booking Travel',
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => const BookingHotelPage());
            },
            child: const MenuItemCard(
              icon: iconBokingHotel,
              title: 'Booking Hotel',
            ),
          ),
        ],
      );
    }

    Widget tabBar() {
      return Container(
        color: whiteColor,
        margin: const EdgeInsets.symmetric(horizontal: 1),
        height: 300,
        child: ContainedTabBarView(
          tabs: const [
            Text(
              'Jaga',
              style: TextStyle(
                  fontSize: 12, fontWeight: bold, fontFamily: 'Poppins'),
            ),
            Text(
              'Pakai',
              style: TextStyle(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            Text(
              'Bawa',
              style: TextStyle(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            Text(
              'Instal',
              style: TextStyle(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
          ],
          tabBarProperties: TabBarProperties(
            margin: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 15,
            ),
            background: Container(
              decoration: const BoxDecoration(
                color: whiteColor,
              ),
            ),
            position: TabBarPosition.bottom,
            alignment: TabBarAlignment.end,
            indicatorColor: whiteColor,
            labelColor: orangeColor,
            unselectedLabelColor: Colors.grey[400],
          ),
          views: [
            Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0x1F9E9E9E),
                ),
              ),
              elevation: 0,
              color: whiteColor,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Image.asset(
                      "assets/ilustrasi_1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jaga Jarak Aman",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Jangan berdesakan antri\ndengan menjaga jarak\nuntuk keamanan dan\nkenyamanan bersama",
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Pesan Tiket Sekarang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0x1F9E9E9E),
                ),
              ),
              elevation: 0,
              color: whiteColor,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Image.asset(
                      "assets/ilustrasi_2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Selalu Pakai Masker",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Dengan selalu memakai\nmasker anda sudah peduli\nterhadap kesehatan\nteman seperjalanan",
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Pesan Tiket Sekarang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0x1F9E9E9E),
                ),
              ),
              elevation: 0,
              color: whiteColor,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Image.asset(
                      "assets/ilustrasi_3.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bawa dan pakai selalu\nhandsanitizer",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Bawa sendiri lebih aman\nkok gaes biar gausah\nminta ke orang lain",
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Pesan Tiket Sekarang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Card(
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Color(0x1F9E9E9E),
                ),
              ),
              elevation: 0,
              color: whiteColor,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 5,
                      ),
                      child: Image.asset(
                        "assets/ilustrasi_4.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Install Peduli Lindungi\nuntuk kelancaran\nperjalanmu",
                        style: blackTextStyle.copyWith(
                          fontWeight: semiBold,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Belum install? klik tombol di\nbawah!",
                        style: blackTextStyle.copyWith(
                          fontWeight: regular,
                          fontSize: 12,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/home');
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text(
                            'Pesan Tiket Sekarang',
                            style: whiteTextStyle.copyWith(
                              fontSize: 12,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget banner() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Beruntung dengan Mitra Gryatix',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Dapatkan berbagai tawaran promo menarik dengan\nmenggunakan jasa dari mitra kami',
              style: greyTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlayAnimationDuration: const Duration(seconds: 1),
              autoPlayCurve: Curves.linear,
              autoPlay: true,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 4),
              pauseAutoPlayOnTouch: true,
              viewportFraction: 0.9,
              aspectRatio: 12 / 5,
            ),
            items: [
              'assets/banner1.png',
              'assets/banner2.png',
            ].map(
              (i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(i),
                    );
                  },
                );
              },
            ).toList(),
          ),
        ],
      );
    }

    Widget info() {
      return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Kebijakan perjalanan per 11 Juni 2022',
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                'Penting nih! Dibaca dulu ya, supaya perjalan kamu lancar\nsampai tempa tujuan',
                style: greyTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Card(
                      color: transparentColor,
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: topOrangeGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 40,
                                ),
                                child: Image.asset(
                                  'assets/icon_aturan_umum.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Text(
                                'Info Umum Aturan Perjalanan',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: transparentColor,
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: topOrangeGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                child: Image.asset(
                                  'assets/icon_penerbangan_inter.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Text(
                                'Info Penerbangan International',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: transparentColor,
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: topOrangeGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                child: Image.asset(
                                  'assets/icon_penerbangan_domestik.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Text(
                                'Info Penerbangan Domestik',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: transparentColor,
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: topOrangeGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                child: Image.asset(
                                  'assets/icon_info_kereta_api.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Text(
                                'Info\nPerjalanan Kereta Api',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: transparentColor,
                      elevation: 2,
                      child: Container(
                        width: 90,
                        height: 100,
                        decoration: BoxDecoration(
                          gradient: topOrangeGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            top: 5,
                            right: 5,
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30,
                                ),
                                child: Image.asset(
                                  'assets/icon_perjalanan_mobil.png',
                                  width: 35,
                                  height: 35,
                                ),
                              ),
                              Text(
                                'Info\nPerjalanan Mobil',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 10,
                                  fontWeight: semiBold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      );
    }

    Widget menuTour() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(
              'Destinasi Wisata yang Lagi Viral',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  SizedBox(
                    width: 135,
                    height: 135,
                    child: Card(
                      color: orangeColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image_wisata_1.png',
                          ),
                          Positioned(
                            top: 10,
                            left: 12,
                            right: 12,
                            child: Text(
                              'Pulau Sendiri',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 135,
                    height: 135,
                    child: Card(
                      color: orangeColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image_wisata_2.png',
                          ),
                          Positioned(
                            top: 10,
                            left: 12,
                            right: 12,
                            child: Text(
                              'Curug Sutri',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 135,
                    height: 135,
                    child: Card(
                      color: orangeColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image_wisata_3.png',
                          ),
                          Positioned(
                            top: 10,
                            left: 12,
                            right: 12,
                            child: Text(
                              'Kawah Galunggung',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 135,
                    height: 135,
                    child: Card(
                      color: orangeColor,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/image_wisata_1.png',
                          ),
                          Positioned(
                            top: 10,
                            left: 12,
                            right: 12,
                            child: Text(
                              'Pulau Sendiri',
                              style: whiteTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
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
          ),
          const SizedBox(
            height: 30,
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(),
            menuItemView(),
            tabBar(),
            banner(),
            info(),
            menuTour(),
          ],
        ),
      ),
    );
  }
}
