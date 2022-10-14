import 'package:flutter/material.dart';
import 'package:fooddelivery/screens/food/popular_food_details.dart';
import 'package:fooddelivery/screens/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

//!  4:24:15
//! Documentation uqib chiqish kerak full
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PopularFoodDetail(),
      // home: MainFoodPage(),
      //  onGenerateRoute: OrgRoutes.instanse.onGenerate,
      // initialRoute: '/profile',
    );
  }
}
