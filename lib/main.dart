import 'package:flutter/material.dart';
import 'package:fooddelivery/home/main_food_page.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

//!  2:50:10
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
      home: const MainFoodPage(),
      //  onGenerateRoute: OrgRoutes.instanse.onGenerate,
      // initialRoute: '/profile',
    );
  }
}
