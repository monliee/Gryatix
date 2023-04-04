import 'package:flutter/material.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_text_style.dart';

class HasilTiketBisPage extends StatefulWidget {
  const HasilTiketBisPage({super.key});

  @override
  State<HasilTiketBisPage> createState() => _HasilTiketBisPage();
}

class _HasilTiketBisPage extends State<HasilTiketBisPage> {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? header() {
      return AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Hasil Tiket',
            style: whiteTextStyle.copyWith(
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 4,
        backgroundColor: orangeColor,
        toolbarHeight: MediaQuery.of(context).size.height / 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 25,
              right: 10,
            ),
            child: IconButton(
              icon: const Icon(Icons.edit),
              tooltip: 'Show Back',
              onPressed: () {},
            ),
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 10,
          ),
          child: IconButton(
            icon: const Icon(Icons.arrow_back),
            tooltip: 'Show Back',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      );
    }

    Widget filter() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              '3 Tiket Tersedia',
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              width: 72,
              height: 30,
              decoration: BoxDecoration(
                color: transparentColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: orangeColor,
                  width: 1,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Filter',
                    style: orangeTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  const Icon(
                    Icons.filter_list,
                    size: 20,
                    color: orangeColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget filterView() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TSM',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10:00 PM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Tasik Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Eksekutif',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.directions_bus_sharp,
                          size: 24,
                          color: orangeColor,
                        ),
                        Text(
                          '3 Jam',
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BDG',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '01:00 AM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Bandung Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '15 Kursi',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Alvaro Satya Nusa',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Rp 45.000,-',
                    style: orangeTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TSM',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10:00 PM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Tasik Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Eksekutif',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.directions_bus_sharp,
                          size: 24,
                          color: orangeColor,
                        ),
                        Text(
                          '3 Jam',
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BDG',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '01:00 AM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Bandung Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '15 Kursi',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Alvaro Satya Nusa',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Rp 45.000,-',
                    style: orangeTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              height: 130,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TSM',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '10:00 PM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Tasik Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Eksekutif',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.directions_bus_sharp,
                          size: 24,
                          color: orangeColor,
                        ),
                        Text(
                          '3 Jam',
                          style: blackTextStyle.copyWith(
                            fontSize: 10,
                            fontWeight: bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'BDG',
                        style: orangeTextStyle.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '01:00 AM',
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: bold,
                        ),
                      ),
                      Text(
                        'Bandung Pool',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        '15 Kursi',
                        style: blackTextStyle.copyWith(
                          fontSize: 10,
                          fontWeight: regular,
                          color: const Color(0xff0F5193),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color: whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: blackColor.withOpacity(0.1),
                    blurRadius: 5.0,
                    spreadRadius: 0.5,
                    offset: const Offset(0.0, 1.0),
                  ),
                ],
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Alvaro Satya Nusa',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Rp 45.000,-',
                    style: orangeTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            filter(),
            filterView(),
          ],
        ),
      ),
    );
  }
}
