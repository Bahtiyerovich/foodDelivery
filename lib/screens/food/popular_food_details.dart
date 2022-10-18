import 'package:flutter/material.dart';
import 'package:fooddelivery/core/extensions/context.dart';
import 'package:fooddelivery/core/extensions/dimensions.dart';
import 'package:fooddelivery/core/widgets/app_column.dart';
import 'package:fooddelivery/core/widgets/app_icon.dart';
import 'package:fooddelivery/core/widgets/expandable_text.dart';

import '../../core/constants/color_const.dart';
import '../../core/widgets/big_text.dart';
import '../../core/widgets/icon_text_widget.dart';
import '../../core/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('height is ' + MediaQuery.of(context).size.height.toString());
    print('width is ' + MediaQuery.of(context).size.width.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        // background image
        Positioned(
            left: 0,
            right: 0,
            child: Container(
              height: Dimensions.popularFoodImgSize,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image/food0.png'))),
            )),
        // icon widgets
        Positioned(
            top: Dimensions.height15 * 3,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            )),
        // introduction of food
        Positioned(
            top: Dimensions.popularFoodImgSize - Dimensions.height15,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppColumn(text: 'Chinese Side'),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: 'Introduce'),
                  SizedBox(height: Dimensions.height20),
                  const Expanded(
                      child: SingleChildScrollView(
                          child: ExpandableText(
                              text:
                                  'Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел.')))
                ],
              ),
            )),
      ]),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Icon(Icons.remove, color: AppColors.signColor),
                SizedBox(width: Dimensions.width10 / 2),
                BigText(text: '0'),
                SizedBox(width: Dimensions.width10 / 2),
                Icon(Icons.add, color: AppColors.signColor)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              bottom: Dimensions.height20,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              color: AppColors.mainColor,
            ),
            child: BigText(
              text: '\$10 | Add to cart',
              color: Colors.white,
            ),
          ),
        ]),
      ),
    );
  }
}
