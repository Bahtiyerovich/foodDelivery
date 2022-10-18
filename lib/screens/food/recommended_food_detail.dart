import 'package:flutter/material.dart';
import 'package:fooddelivery/core/constants/color_const.dart';
import 'package:fooddelivery/core/extensions/dimensions.dart';
import 'package:fooddelivery/core/widgets/app_icon.dart';
import 'package:fooddelivery/core/widgets/big_text.dart';
import 'package:fooddelivery/core/widgets/expandable_text.dart';

class RecommendedFoodDetail extends StatefulWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  State<RecommendedFoodDetail> createState() => _RecommendedFoodDetailState();
}

class _RecommendedFoodDetailState extends State<RecommendedFoodDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(slivers: [
        SliverAppBar(
          toolbarHeight: 70,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppIcon(icon: Icons.clear),
              AppIcon(icon: Icons.shopping_cart_outlined),
            ],
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(20),
            child: Container(
              child: Center(
                child: BigText(text: 'Chinese Side', size: Dimensions.font26),
              ),
              width: double.infinity,
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  )),
            ),
          ),
          pinned: true,
          backgroundColor: AppColors.yellowColor,
          expandedHeight: 300,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            'assets/image/food0.png',
            width: double.infinity,
            fit: BoxFit.cover,
          )),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: Dimensions.width20,
                  right: Dimensions.width20,
                ),
                child: ExpandableText(
                    text:
                        'Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. Я делал выводы, не дослушав собеседника до конца. Когда я стал региональным директором по маркетингу в регионе Центральная Ближний Восток и Африка, это стало моей ахиллесовой пятой. И на одной из аттестационных сессий на 360 градусов (когда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел. гда тебя оценивают начальники, коллеги и подчиненные) неумение слушать было названо самой моей большой проблемой. И тогда я прозрел.'),
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Column(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: EdgeInsets.only(
            top: Dimensions.height10,
            bottom: Dimensions.height10,
            left: Dimensions.width20 * 2.5,
            right: Dimensions.width20 * 2.5,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppIcon(
                  iconSize: Dimensions.font26,
                  icon: Icons.remove,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor),
              BigText(
                text: '\$12.88 ' + ' X ' + ' 0 ',
                color: AppColors.mainBlackColor,
                size: Dimensions.font26,
              ),
              AppIcon(
                  iconSize: Dimensions.font26,
                  icon: Icons.add,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor),
            ],
          ),
        ),
        Container(
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
                child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                )),
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
      ]),
    );
  }
}
