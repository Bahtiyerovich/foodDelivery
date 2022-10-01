import 'package:flutter/material.dart';

class OrgRoutes {
  static final OrgRoutes _instanse = OrgRoutes.init();
  static OrgRoutes get instanse => OrgRoutes._instanse;
  OrgRoutes.init();

  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {

      //? Home Page

      // case '/detail':
      //   return MaterialPageRoute(
      //       builder: (_) => DetailPage(
      //             getData: args as OrganicoApiModel,
      //             index: args as int,
      //           ));
      // case '/my_wishlist':
      //   return MaterialPageRoute(
      //       builder: (_) => MyWishlistPage(getData: args as OrganicoApiModel));
    }
  }
}
