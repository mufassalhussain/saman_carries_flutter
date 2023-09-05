import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/configs/size_configs.dart';
import 'package:saman_carries_flutter/themes/colors.dart';
import 'package:saman_carries_flutter/widgets/text_widget.dart';
import '../../../widgets/text_field_widget.dart';

class AddOrderShopDetails extends StatefulWidget {
  const AddOrderShopDetails({super.key});

  @override
  State<AddOrderShopDetails> createState() => _AddOrderShopDetailsState();
}

class _AddOrderShopDetailsState extends State<AddOrderShopDetails> {
  bool selectedValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
        child: Column(children: [
          SizedBox(
            height: getHeight(0),
          ),
          Row(
            children: [
              TextWidget.mainText('مقررہ قیمت'),
              SizedBox(
                width: getWidth(10),
              ),
              Localizations.override(
                context: context,
                locale: const Locale('en', 'US'),
                child: Transform.scale(
                  scale: 0.9,
                  child: Switch(
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                    inactiveTrackColor: const Color.fromRGBO(106, 251, 146, 1),
                    inactiveThumbColor: AppColors.mainBackgroundClr,
                    activeTrackColor: AppColors.textField2Clr,
                    activeColor: AppColors.mainBackgroundClr,
                  ),
                ),
              ),
            ],
          ),
          Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      TextWidget.mainText('دکان کے پیسے'),
                      const ShopTextField(
                        hintText: '',
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextWidget.mainText('گاڑی کی قسم '),
                      const ShopTextField(
                        hintText: '',
                        suffixIcon: true,
                      )
                    ],
                  )
                ],
              )),
          const Padding(
              padding: EdgeInsets.fromLTRB(20.0, 5, 20, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ShopTextField(
                        hintText: 'کہاں تک',
                        suffixIcon: true,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      ShopTextField(
                        hintText: 'کب تک',
                        suffixIcon: true,
                      )
                    ],
                  )
                ],
              )),
        ]));
  }
}
