import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/core/constants/color_const.dart';
import 'package:fooddelivery/core/constants/fonts_const.dart';
import 'package:fooddelivery/core/extensions/context.dart';
import 'package:fooddelivery/core/extensions/dimensions.dart';
import 'package:fooddelivery/core/widgets/big_text.dart';
import 'package:fooddelivery/core/widgets/small_text.dart';
import 'package:fooddelivery/home/food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    print('height is ' + MediaQuery.of(context).size.height.toString());
    print('width is ' + MediaQuery.of(context).size.width.toString());

    return Scaffold(
      body: Column(
        children: [
          //* header (appBar)

          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            margin: EdgeInsets.only(
                top: Dimensions.height15 * 3, bottom: Dimensions.height15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(children: [
                  BigText(
                    text: 'Bangladesh',
                    color: AppColors.mainColor,
                  ),
                  Row(children: [
                    SmallText(
                      text: 'Tashkent',
                      color: Colors.black54,
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      size: Dimensions.icon24,
                    )
                  ]),
                ]),
                Center(
                  child: Container(
                    width: Dimensions.height15 * 3,
                    height: Dimensions.height15 * 3,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(Dimensions.radius30 / 2),
                      color: AppColors.mainColor,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: Dimensions.icon24,
                    ),
                  ),
                )
              ],
            ),
          ),

          //* body

          const FoodPageBody(),
        ],
      ),
    );
  }
}
