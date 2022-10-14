import 'package:flutter/material.dart';
import 'package:get/get.dart';

//! Sauddi videosidan qarash kerak mediaQuery context qilib ishlatgani

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.9;
  static double pageViewContainer = screenHeight / 4.2;
  static double pageViewTextContainer = screenHeight / 7.72;
  

//height padding or margin
  static double height10 = screenHeight / 92.6;
  static double height15 = screenHeight / 61.7;
  static double height20 = screenHeight / 46.3;
  static double height25 = screenHeight / 37.04;
  static double height30 = screenHeight / 30.87;

  //width
  static double width10 = screenWidth / 42.8;
  static double width15 = screenWidth / 28.5;
  static double width20 = screenWidth / 21.4;

  //fonts
  static double font12 = screenHeight / 70.4;
  static double font16 = screenHeight / 57.87;
  static double font18 = screenHeight / 51.5;
  static double font20 = screenHeight / 46.3;
  static double font26 = screenHeight / 35.61;


  //icons
  static double icon16 = screenHeight / 57.87;
  static double icon20 = screenHeight / 46.3;
  static double icon24 = screenHeight / 38.58;

  //radius
  static double radius20 = screenHeight / 46.3;
  static double radius30 = screenHeight / 30.87;

  // list view size

  static double listViewImgSize = screenWidth / 3.57;
  static double listViewTextSize = screenWidth / 4.28;

  // popular food
  static double popularFoodImgSize = screenHeight / 2.65;

  // bottom height
  static double bottomHeightBar = screenHeight / 7.72;


}
