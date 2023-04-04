import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_text_style.dart';

int _current = 0;

final List imgList = ['assets/malaka.png', 'assets/malaka2.jpg'];

class DetailHotelPage extends StatefulWidget {
  const DetailHotelPage({super.key});

  @override
  State<DetailHotelPage> createState() => _DetailHotelPageState();
}

class _DetailHotelPageState extends State<DetailHotelPage> {
  DateTime today = DateTime.now();

  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? header() {
      return AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Malaka Hotel',
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
              icon: const Icon(Icons.info_outline_rounded),
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

    Widget banner() {
      return SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  aspectRatio: 15 / 9,
                  onPageChanged: ((index, reason) {
                    print(index);
                    setState(() {
                      _current = index;
                    });
                  })),
              items: imgList
                  .map((item) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: ClipRRect(
                            child: Image.asset(
                          item,
                        )),
                      ))
                  .toList(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((entry) {
                return Container(
                  width: 28,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? greyTextColor
                            : orangeColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      );
    }

    Widget detail() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: greyTextColor.withOpacity(0.1),
              border:
                  Border.all(color: greyTextColor.withOpacity(0.2), width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Bandung, Jl. Halimun No.36',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: const [
                          Icon(
                            Icons.favorite_border_outlined,
                            size: 25,
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            size: 25,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star.png',
                        width: 16,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Image.asset(
                        'assets/star.png',
                        width: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '270 Reviews',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: medium,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Detail',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Terletak strategis di area restoran, berbelanja, hiburan keluarga di Bandung, Malaka Hotel dekat Trans Studio Bandung menyediakan tempat yang kondusif untuk melepas penat dari kesibukan Anda. Terletak hanya 5 km dari kehebohan pusat kota, hotel murah di Bandung bintang 2 ini memiliki lokasi yang bagus dan menyediakan akses ke objek wisata terbesar di kota ini.',
                    textAlign: TextAlign.start,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Fasilitas Hotel',
                    textAlign: TextAlign.start,
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/spotify.png',
                              width: 24,
                            ),
                            Text(
                              'Wifi',
                              style: blackTextStyle.copyWith(
                                fontSize: 10,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Jenis Kamar',
                    style: blackTextStyle.copyWith(
                      fontSize: 14,
                      fontWeight: bold,
                    ),
                  ),
                  const SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 2,
                          vertical: 5,
                        ),
                        // height: 84,
                        decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUPERIOR TWIN',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 11,
                                  fontWeight: bold,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rp 450.000 per Malam / Kamar',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                ),
                              ),
                              Text(
                                'Tersedia 5 Ruangan',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                ),
                              ),
                              Text(
                                'Kapasitas 2 Orang',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        // height: 84,
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'SUPERIOR TWIN',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 11,
                                  fontWeight: bold,
                                  color: Colors.blue,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                'Rp 450.000 per Malam / Kamar',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                'Tersedia 5 Ruangan',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                  color: Colors.blue,
                                ),
                              ),
                              Text(
                                'Kapasitas 2 Orang',
                                style: orangeTextStyle.copyWith(
                                  fontSize: 9,
                                  fontWeight: regular,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Stack(
            children: [
              Positioned.fill(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  decoration: const BoxDecoration(
                    color: orangeColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  fixedSize: const Size(414, 60),
                  foregroundColor: whiteColor,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.pop(context);
                  });
                },
                child: const Text(
                  'Booking Sekarang',
                ),
              ),
            ],
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: header(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            banner(),
            detail(),
          ],
        ),
      ),
    );
  }
}
