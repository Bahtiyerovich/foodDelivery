import 'package:fooddelivery/controllers/popular_product_controller.dart';
import 'package:fooddelivery/data/api/api_client.dart';
import 'package:fooddelivery/data/repository/popular_product_repo.dart';
import 'package:get/get.dart';

Future<void> init() async {
  // api client
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://mvs.bslmeiyu.com"));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find())); //05:49

  // controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
