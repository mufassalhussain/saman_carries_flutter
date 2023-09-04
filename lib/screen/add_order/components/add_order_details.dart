import 'package:flutter/material.dart';

import '../../../configs/size_configs.dart';
import '../../../themes/colors.dart';
import '../../../widgets/text_field_widget.dart';
import '../../../widgets/text_widget.dart';

class AddOrderDetails extends StatefulWidget {
  const AddOrderDetails({super.key});

  @override
  State<AddOrderDetails> createState() => _AddOrderDetailsState();
}

class _AddOrderDetailsState extends State<AddOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.mainText('عمیر اقبال'),
              TextWidget.mainText('00000'),
              TextWidget.mainText('حسن گلاس')
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 5, 20, 0),
          child: Divider(
            color: AppColors.fontClr,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget.mainText('نام '),
                  TextWidget.mainText('فون نمبر'),
                  TextWidget.mainText('تک'),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: getHeight(10),
                    ),
                    const MainTextField(),
                    SizedBox(
                      height: getHeight(25),
                    ),
                    const MainTextField(),
                    SizedBox(
                      height: getHeight(25),
                    ),
                    SuffixMainTextField(
                      suffixIcon: Icon(
                        Icons.arrow_drop_down,
                        size: getWidth(40),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
