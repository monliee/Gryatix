import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../shared/app_image.dart';
import '../../../shared/app_text_style.dart';

class MenuItemCard extends StatelessWidget {
  final String icon;
  final String title;
  const MenuItemCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          icon,
          height: 60,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 10,
          ),
        )
      ],
    );
  }
}
