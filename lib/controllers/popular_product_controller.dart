import 'package:fooddelivery/models/products_model.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../data/repository/popular_product_repo.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popuarProductList => _popularProductList;

  Future<void> getPopularProductList() async {
    Response response =
        await popularProductRepo.getPopularProductList(); //05:40
    if (response.statusCode == 200) {
      print('got products');
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      print(_popularProductList);
      update();
    } else {}
  }
}
