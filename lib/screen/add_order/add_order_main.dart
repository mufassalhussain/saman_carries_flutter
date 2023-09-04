import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/screen/add_order/components/add_order_shop_details.dart';

import 'package:saman_carries_flutter/themes/colors.dart';

import 'components/add_order_details.dart';

class AddOrder extends StatefulWidget {
  static const routeName = '/';
  const AddOrder({super.key});

  @override
  State<AddOrder> createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundClr,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: const SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            AddOrderDetails(),
            AddOrderShopDetails(),
          ],
        ),
      )),
    );
  }
}
