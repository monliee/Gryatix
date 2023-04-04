import 'package:flutter/material.dart';
import 'package:grya_tix/shared/app_dimensions.dart';
import 'package:grya_tix/shared/app_text_style.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Page',
          style: blackTextStyle.copyWith(
            fontSize: fontSizeLarge,
            fontWeight: bold,
          ),
        ),
      ),
    );
  }
}
