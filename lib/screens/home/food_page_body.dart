import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/core/constants/color_const.dart';
import 'package:fooddelivery/core/extensions/context.dart';
import 'package:fooddelivery/core/extensions/dimensions.dart';
import 'package:fooddelivery/core/widgets/big_text.dart';
import 'package:fooddelivery/core/widgets/small_text.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../../core/widgets/icon_text_widget.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({Key? key}) : super(key: key);

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: .85);
  var _curPageValue = 0.0;
  double _scaleFactor = 0.8;
  double _height = Dimensions.pageViewContainer;
  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _curPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //slider section
        Container(
          height: Dimensions.pageView, //330
          child: PageView.builder(
              controller: pageController,
              itemCount: 5,
              itemBuilder: (context, position) {
                return _buildPageItem(position);
              }),
        ),
        //dots
        DotsIndicator(
          dotsCount: 5,
          position: _curPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
          ),
        ),
        //popular text
        SizedBox(height: Dimensions.height30),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width15 * 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              BigText(text: 'Popular'),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.height15 / 5),
                  child: BigText(text: '.', color: Colors.black45)),
              SizedBox(width: Dimensions.width10),
              Container(
                  margin: EdgeInsets.only(bottom: Dimensions.height10 / 5),
                  child: SmallText(text: 'Food pairing', color: Colors.black45))
            ],
          ),
        ),
        // list of food and images
        ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    bottom: Dimensions.height10),
                child: Row(children: [
                  //* image section
                  Container(
                    height: Dimensions.listViewImgSize,
                    width: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/image/food0.png'))),
                  ),
                  //* text section
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextSize,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              Dimensions.radius20,
                            ),
                            bottomRight: Radius.circular(
                              Dimensions.radius20,
                            ),
                          ),
                          color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: 'Nutritious fruit meal in China'),
                            SizedBox(height: Dimensions.height10),
                            SmallText(text: 'With chinese characteristics'),
                            SizedBox(height: Dimensions.height10),
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
                        ),
                      ),
                    ),
                  )
                ]),
              );
            }),
      ],
    );
  }

  Widget _buildPageItem(int index) {
    Matrix4 matrix = new Matrix4.identity();
    if (index == _curPageValue.floor()) {
      var currScale = 1 - (_curPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(1, currTrans, 0);
    } else if (index == _curPageValue.floor() + 1) {
      var currScale =
          _scaleFactor + (_curPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(1, currTrans, 0);
    } else if (index == _curPageValue.floor() - 1) {
      var currScale = 1 - (_curPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(1, currTrans, 0);
    } else {
      var currScale = 0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)
        ..setTranslationRaw(0, _height * (1 - _scaleFactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Dimensions.pageViewContainer,
            margin: EdgeInsets.only(
                left: Dimensions.width10, right: Dimensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius30),
                // color: index.isEven ? Colors.amber : Colors.blue,
                image: const DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/image/food0.png'))),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimensions.pageViewTextContainer,
              margin: EdgeInsets.only(
                  left: Dimensions.width15 * 2,
                  right: Dimensions.width15 * 2,
                  bottom: Dimensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xFFe8e8e8),
                        blurRadius: 5.0,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimensions.height15,
                    left: Dimensions.width10,
                    right: Dimensions.width15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: 'Chines Side'),
                    SizedBox(height: Dimensions.height10), //10
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 14,
                                  )),
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
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
