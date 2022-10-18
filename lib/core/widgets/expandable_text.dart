import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fooddelivery/core/constants/color_const.dart';
import 'package:fooddelivery/core/extensions/dimensions.dart';
import 'package:fooddelivery/core/widgets/small_text.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({Key? key, required this.text}) : super(key: key);

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firstHalf;
  late String secondHalf;
  bool hiddenText = true;
  double textheight = Dimensions.screenHeight / 4;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textheight) {
      firstHalf = widget.text.substring(0, textheight.toInt());
      secondHalf =
          widget.text.substring(textheight.toInt() + 1, widget.text.length);
    } else {
      firstHalf = widget.text;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty
          ? SmallText(
              color: AppColors.paraColor,
              size: Dimensions.font16,
              text: firstHalf)
          : Column(
              children: [
                SmallText(
                  height: 1.8,
                  color: AppColors.paraColor,
                  size: Dimensions.font16,
                  text: hiddenText
                      ? (firstHalf + '...')
                      : (firstHalf + secondHalf),
                ),
                InkWell(
                  child: Row(children: [
                    SmallText(text: 'Show more', color: AppColors.mainColor),
                    Icon(
                        hiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor),
                  ]),
                  onTap: () {
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                )
              ],
            ),
    );
  }
}
