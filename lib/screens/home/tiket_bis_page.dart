import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:grya_tix/screens/home/widget/hasil_tiket_page.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_text_style.dart';

class TiketBisPage extends StatefulWidget {
  const TiketBisPage({super.key});

  @override
  State<TiketBisPage> createState() => _TiketBisPageState();
}

class _TiketBisPageState extends State<TiketBisPage> {
  bool isChecked = false;
  String _date = "Not set";
  String _date1 = "Not set";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        top: false,
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/image_tiket_bis.png',
            ),
            ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 110),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20)),
                    color: whiteColor,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 15,
                        ),
                        decoration: BoxDecoration(
                          color: orangeColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'Terminal / Tempat Pemberangkatan',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: orangeTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                            dense: true,
                            visualDensity: const VisualDensity(vertical: -3),
                            onTap: () {},
                            trailing: const Icon(
                              Icons.timeline,
                              color: orangeColor,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: greyTextColor.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: ListTile(
                            title: Text(
                              'Terminal / Tempat Tujuan',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                            dense: true,
                            visualDensity: const VisualDensity(vertical: -3),
                            onTap: () {},
                            trailing: const Icon(
                              Icons.place,
                              color: greyTextColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 115,
                            height: 40,
                            decoration: BoxDecoration(
                              color: greyTextColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  _date,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: regular,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    DatePicker.showDatePicker(
                                      context,
                                      theme: const DatePickerTheme(
                                        containerHeight: 210.0,
                                      ),
                                      showTitleActions: true,
                                      minTime: DateTime(2000, 1, 1),
                                      maxTime: DateTime(2040, 12, 31),
                                      onConfirm: (date) {
                                        print('confirm $date');
                                        _date =
                                            '${date.year}/${date.month}/${date.day}';
                                        setState(() {});
                                      },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en,
                                    );
                                  },
                                  child: const Icon(
                                    Icons.date_range,
                                    color: greyTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 115,
                            height: 40,
                            decoration: BoxDecoration(
                              color: greyTextColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  _date1,
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: regular,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    DatePicker.showDatePicker(
                                      context,
                                      theme: const DatePickerTheme(
                                        containerHeight: 210.0,
                                      ),
                                      showTitleActions: true,
                                      minTime: DateTime(2000, 1, 1),
                                      maxTime: DateTime(2040, 12, 31),
                                      onConfirm: (date) {
                                        print('confirm $date');
                                        _date1 =
                                            '${date.year}/${date.month}/${date.day}';
                                        setState(() {});
                                      },
                                      currentTime: DateTime.now(),
                                      locale: LocaleType.en,
                                    );
                                  },
                                  child: const Icon(
                                    Icons.date_range,
                                    color: greyTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 99,
                            height: 40,
                            decoration: BoxDecoration(
                              color: greyTextColor.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  '1 Kursi',
                                  style: greyTextStyle.copyWith(
                                    fontSize: 12,
                                    fontWeight: regular,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Icon(
                                    Icons.people,
                                    color: greyTextColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Transform.scale(
                              scale: 1.3,
                              child: Checkbox(
                                  checkColor: Colors.white,
                                  value: isChecked,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(4),
                                    ),
                                  ),
                                  onChanged: (bool? value) {
                                    setState(
                                      () {
                                        isChecked = value!;
                                      },
                                    );
                                  },
                                  fillColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                          (Set<MaterialState> states) {
                                    if (states
                                        .contains(MaterialState.disabled)) {
                                      return orangeColor.withOpacity(.32);
                                    }
                                    return orangeColor;
                                  })),
                            ),
                            Text(
                              'Pulang Pergi',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Get.to(() => const HasilTiketBisPage());
                            });
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: orangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: Text(
                            'Cari Tiket',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Pencarian Terakhirmu',
                              style: blackTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              'Hapus',
                              style: orangeTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: semiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 10,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: blackColor.withOpacity(0.1),
                                        offset: const Offset(4.0, 5.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 0.5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Jakarta ke Surabaya',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: medium,
                                          ),
                                        ),
                                        Text(
                                          '07 Sept 2023   |   5 Kursi',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: greyTextStyle.copyWith(
                                            fontSize: 10,
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                    dense: true,
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    onTap: () {},
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: blackColor.withOpacity(0.1),
                                        offset: const Offset(4.0, 5.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 0.5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Tasik ke Papua',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: medium,
                                          ),
                                        ),
                                        Text(
                                          '23 Juni 2023   |   11 Kursi',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: greyTextStyle.copyWith(
                                            fontSize: 10,
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                    dense: true,
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    onTap: () {},
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 200,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: whiteColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: blackColor.withOpacity(0.1),
                                        offset: const Offset(4.0, 5.0),
                                        blurRadius: 5.0,
                                        spreadRadius: 0.5,
                                      ),
                                    ],
                                  ),
                                  child: ListTile(
                                    title: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Bandung ke Malang',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: blackTextStyle.copyWith(
                                            fontSize: 12,
                                            fontWeight: medium,
                                          ),
                                        ),
                                        Text(
                                          '09 Maret 2023   |   3 Kursi',
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: greyTextStyle.copyWith(
                                            fontSize: 10,
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                    dense: true,
                                    visualDensity:
                                        const VisualDensity(vertical: -3),
                                    onTap: () {},
                                    trailing: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Destinasi Wisata yang Lagi Viral',
                              style: blackTextStyle.copyWith(
                                fontSize: 16,
                                fontWeight: semiBold,
                              ),
                            ),
                            Text(
                              'Cek info dan persyaratan perjalanan terbaru disini.',
                              style: greyTextStyle.copyWith(
                                fontSize: 12,
                                fontWeight: regular,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 135,
                                height: 135,
                                child: Card(
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
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.arrow_back,
                        size: 20,
                        color: orangeColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Tiket Bis',
                    style: whiteTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
