import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:grya_tix/screens/home/widget/detail_hotel.dart';
import 'package:grya_tix/shared/app_color.dart';
import 'package:grya_tix/shared/app_dimensions.dart';
import 'package:grya_tix/shared/app_text_style.dart';
import 'package:table_calendar/table_calendar.dart';

int _current = 0;

final List imgList = [
  'assets/banner1.png',
  'assets/banner_hotel1.png',
  'assets/banner2.png',
];

class BookingHotelPage extends StatefulWidget {
  const BookingHotelPage({super.key});

  @override
  State<BookingHotelPage> createState() => _BookingHotelPageState();
}

class _BookingHotelPageState extends State<BookingHotelPage> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  CarouselController controller = CarouselController();
  bool isshow = true;
  bool ishide = false;
  bool isshow1 = true;
  bool ishide1 = false;
  bool isshow2 = true;
  bool ishide2 = false;

  late Image img;

  Image imgOn = Image.asset(
    'assets/schedule.png',
  );
  Image imgOff = Image.asset(
    'assets/schedule_active.png',
  );

  @override
  void initState() {
    super.initState();
    img = imgOn;
  }

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget? header() {
      return AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(
            'Booking Hotel',
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
                  aspectRatio: 12 / 4,
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
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      );
    }

    Widget searchFilter() {
      return Visibility(
        visible: isshow2,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 15,
          ),
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(28, 65, 65, 65),
                offset: Offset(
                  0,
                  0,
                ),
                blurRadius: 09.0,
                spreadRadius: 1.0,
              ),
            ],
            color: whiteColor,
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    color: greyTextColor.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(
                      radiusDefault,
                    ),
                    border: Border.all(
                      color: greyTextColor,
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mau nginep dimana nih?',
                      hintStyle: greyTextStyle.copyWith(
                        fontSize: 13,
                        fontWeight: regular,
                      ),
                      contentPadding: const EdgeInsets.only(
                        top: -2,
                      ),
                      prefixIcon: const Icon(
                        Icons.search_outlined,
                        color: greyTextColor,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (() {
                          setState(() {
                            isshow = !isshow;
                            ishide = !ishide;
                          });
                          print(isshow);
                        }),
                        child: Visibility(
                          visible: ishide,
                          child: Container(
                            width: 78,
                            height: 30,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: greyTextColor.withOpacity(0.5),
                                width: 1,
                              ),
                              color: greyTextColor.withOpacity(0.3),
                              borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Text(
                                    'Filter',
                                    style: greyTextStyle.copyWith(
                                      fontSize: 12,
                                      fontWeight: regular,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Icon(
                                    Icons.filter_alt,
                                    color: greyTextColor,
                                    size: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: isshow,
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 15,
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 35,
                        decoration: BoxDecoration(
                          color: greyTextColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(
                            radiusDefault,
                          ),
                          border: Border.all(
                            color: greyTextColor,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.hotel,
                              color: greyTextColor,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Tipe Hotel',
                              style: greyTextStyle,
                            ),
                            const SizedBox(
                              width: 195,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isshow1 = !isshow1;
                                  ishide1 = !ishide1;
                                });
                                print(isshow1);
                              },
                              child: Visibility(
                                visible: isshow1,
                                child: const Icon(
                                  Icons.arrow_drop_down,
                                  color: greyTextColor,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isshow1 = !isshow1;
                                  ishide1 = !ishide1;
                                });
                                print(isshow1);
                              },
                              child: Visibility(
                                visible: ishide1,
                                child: const Icon(
                                  Icons.arrow_drop_up,
                                  color: greyTextColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Visibility(
                        visible: ishide1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 150,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greyTextColor.withOpacity(0.2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Senin, 12 Jan 2021',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Check In',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greyTextColor.withOpacity(0.2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Selasa, 13 Jan 2021',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          'Check Out',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: 150,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greyTextColor.withOpacity(0.2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Anak',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          '1',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: regular,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 150,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greyTextColor.withOpacity(0.2),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(9.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dewasa',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: bold,
                                          ),
                                        ),
                                        Text(
                                          '2',
                                          style: greyTextStyle.copyWith(
                                            fontWeight: regular,
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
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                width: 150,
                                child: TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                    backgroundColor: orangeColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Cari Hotel',
                                    style: whiteTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 150,
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
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Text(
                                    'Tutup Filter',
                                    style: orangeTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Popular Hotel',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              ),
                              Text(
                                '50 Hotel',
                                style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                  fontWeight: regular,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: const Offset(
                          5.0,
                          6.0,
                        ),
                      )
                    ],
                  ),
                  child: Card(
                    elevation: 0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: SizedBox(
                      width: 303,
                      height: 112,
                      child: Center(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/hotel.png',
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Malaka Hotel',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 14,
                                      fontWeight: medium,
                                    ),
                                  ),
                                  Text(
                                    'Jl. Halimun No.36 Bandung',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 11,
                                      fontWeight: regular,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Rp 450.000,-',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 18,
                                      fontWeight: bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 7,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/star.png',
                                        width: 16,
                                      ),
                                      Image.asset(
                                        'assets/star.png',
                                        width: 16,
                                      ),
                                      const SizedBox(
                                        width: 40,
                                      ),
                                      const Text(
                                        '0 reviews',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child: img,
                                  onTapDown: (tap) {
                                    setState(() {
                                      isshow2 = !isshow2;
                                      ishide2 = !ishide2;
                                      img = imgOff;
                                    });
                                    print(isshow2);
                                  },
                                  onTapUp: (tap) {
                                    setState(() {
                                      img = imgOn;
                                    });
                                  },
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => const DetailHotelPage());
                                  },
                                  child: Image.asset(
                                    'assets/info.png',
                                    width: 35,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget schedule() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Visibility(
          visible: ishide2,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: greyTextColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: greyTextColor.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        'Hotel',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -3),
                      onTap: () {},
                      subtitle: Text(
                        'Malaka Hotel',
                        style: orangeTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.edit,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        'Jenis Kamar',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -3),
                      onTap: () {},
                      subtitle: Text(
                        'SUPERIOR TWIN',
                        style: orangeTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_drop_down,
                        size: 30,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        'Jumlah Kamar',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -3),
                      onTap: () {},
                      subtitle: Text(
                        '2',
                        style: orangeTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.edit,
                      ),
                    ),
                    ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      title: Text(
                        'Jumlah Tamu',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: blackTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: regular,
                        ),
                      ),
                      dense: true,
                      visualDensity: const VisualDensity(vertical: -3),
                      onTap: () {},
                      subtitle: Text(
                        '4',
                        style: orangeTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: bold,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.edit,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: greyTextColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: greyTextColor.withOpacity(0.2),
                    width: 1,
                  ),
                ),
                child: TableCalendar(
                  locale: 'en_US',
                  rowHeight: 43,
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                  ),
                  availableGestures: AvailableGestures.all,
                  selectedDayPredicate: (day) => isSameDay(day, today),
                  focusedDay: today,
                  firstDay: DateTime.utc(2010, 10, 09),
                  lastDay: DateTime(2030, 3, 14),
                  onDaySelected: _onDaySelected,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: greyTextColor.withOpacity(0.1),
                      border: Border.all(
                        color: greyTextColor.withOpacity(0.2),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.event_available_outlined,
                                size: 24,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Check In',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Jumat, 6 Agustus 2021',
                            style: orangeTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: greyTextColor.withOpacity(0.1),
                      border: Border.all(
                        color: greyTextColor.withOpacity(0.2),
                        width: 1,
                      ),
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.event_busy_outlined,
                                size: 24,
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Check Out',
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: bold,
                                ),
                              )
                            ],
                          ),
                          Text(
                            'Jumat, 8 Agustus 2021',
                            style: orangeTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: regular,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
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
                        img = imgOff;
                        isshow2 = !isshow2;
                        ishide2 = !ishide2;
                      });
                      print(isshow2);
                    },
                    child: const Text(
                      'Pembayaran',
                    ),
                  ),
                ],
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
            banner(),
            searchFilter(),
            schedule(),
          ],
        ),
      ),
    );
  }
}
