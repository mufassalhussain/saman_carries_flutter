import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/screen/enter_assets/enter_assets.dart';

import '../../../configs/size_configs.dart';
import '../../../themes/colors.dart';
import '../../../widgets/text_widget.dart';

class AddOrderItems extends StatefulWidget {
  const AddOrderItems({super.key});

  @override
  State<AddOrderItems> createState() => _AddOrderItemsState();
}

class _AddOrderItemsState extends State<AddOrderItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWidget.mainText('سامان'),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(EnterAssets.routeName);
          },
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              height: getHeight(35),
              width: getWidth(200),
              child: const Text(
                'سامان داخل کریں',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
        ),
        SizedBox(
          height: getHeight(10),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: getWidth(88)),
            Expanded(
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.textField2Clr,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      height: getHeight(35),
                      width: getWidth(200),
                    ),
                  ),
                  SizedBox(
                    width: getWidth(10),
                  ),
                  const Icon(
                    Icons.check_box,
                    color: AppColors.textField2Clr,
                    size: 45,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: getHeight(10),
        ),
        Container(
          width: getWidth(300),
          height: getHeight(120),
          decoration: BoxDecoration(
            color: AppColors.fillassetsClr,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: AppColors.textField2Clr,
              width: 1.0,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'فریج ۔ اےسی ۔ ٹیبل\nکرسی 4',
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        SizedBox(
          height: getHeight(10),
        ),
        InkWell(
          onTap: () {},
          child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              height: getHeight(35),
              width: getWidth(200),
              child: const Text(
                'آرڈر درج کریں',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              )),
        ),
        SizedBox(
          height: getHeight(20),
        ),
      ],
    );
  }
}
