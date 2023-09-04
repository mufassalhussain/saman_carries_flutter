import 'package:flutter/material.dart';

import '../screen/add_order/add_order_main.dart';
import '../screen/enter_assets/enter_assets.dart';

class Routes {
  static final Map<String, WidgetBuilder> routes = {
    AddOrder.routeName: (context) => const AddOrder(),
    EnterAssets.routeName: (context) => const EnterAssets(),
  };
}
