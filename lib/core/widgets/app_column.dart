import 'package:flutter/material.dart';
import 'package:fooddelivery/core/extensions/context.dart';
import 'package:fooddelivery/core/widgets/big_text.dart';
import 'package:fooddelivery/core/widgets/icon_text_widget.dart';
import 'package:fooddelivery/core/widgets/small_text.dart';

import '../constants/color_const.dart';
import '../extensions/dimensions.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(text: text, size: Dimensions.font26),
        SizedBox(height: Dimensions.height10), //10
        Row(
          children: [
            Wrap(
              children: List.generate(
                  5,
                  (index) =>
                      Icon(Icons.star, color: AppColors.mainColor, size: 14)),
            ),
            SizedBox(width: context.w * 0.015),
            SmallText(text: '4.5'),
            SizedBox(width: context.w * 0.015),
            SmallText(text: '1287'),
            SizedBox(width: context.w * 0.015),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(height: Dimensions.height20), //20
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconAndTextWidget(
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor1,
              text: 'Normal',
            ),
            IconAndTextWidget(
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
              text: '1.7 km',
            ),
            IconAndTextWidget(
              icon: Icons.access_time_filled_rounded,
              iconColor: AppColors.iconColor2,
              text: '32 min',
            ),
          ],
        ),
      ],
    );
  }
}
