import 'package:flutter/material.dart';
import 'package:grya_tix/shared/app_text_style.dart';

const Color blackTextColor = Color(0xff636363);
const Color blackColor = Color(0xff000000);
const Color whiteColor = Color(0xffFFFFFF);
const Color orangeColor = Color(0xffFF4C27);
const Color redColor = Color(0xffE72D00);
const Color greyTextColor = Color(0xff9C9C9C);

// const Color backgroundColor = Color(0xffF1FCFF);
// const Color greyTextColor = Color(0xffD8E1EB);
// const Color greyTextColor2 = Color(0xffBDBEBF);
// const Color greyColor = Color(0xff8E8E93);
// const Color blueColor = Color(0xff3876BA);
// const Color skyBlueColor = Color(0xff00BFF0);
// const Color hintBlueColor2 = Color(0xffE4F8FD);
// const Color hintBlueColor = Color(0xffB4CFEC);

// const Color hintWhiteColor = Color(0xffF7F7F7);
// const Color greenColor = Color(0xff57E3A0);
// const Color redColor = Color(0xffDC6767);

Color transparentColor = Colors.transparent;

const Gradient topOrangeGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xffFF7F47),
    Color(0xffFF4724),
  ],
);

// const Gradient topBlueGradient = LinearGradient(
//   begin: Alignment.topCenter,
//   end: Alignment.bottomCenter,
//   colors: [
//     blueColor,
//     skyBlueColor,
//   ],
// );

const Gradient redGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xffFF9797),
    Color(0xffF16F86),
  ],
);

const Gradient yellowGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xffF2A814),
    Color(0xffF3C111),
  ],
);

const Gradient whiteGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    whiteColor,
    Color(0xffEFFCFF),
  ],
);

// BoxShadow skyBlueShadow = BoxShadow(
//   offset: const Offset(0, 4),
//   color: skyBlueColor.withOpacity(0.1),
//   spreadRadius: 3,
//   blurRadius: 5,
// );
