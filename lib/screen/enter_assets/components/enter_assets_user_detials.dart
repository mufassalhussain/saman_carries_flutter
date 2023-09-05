import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/utils/assets_path.dart';

import '../../../widgets/text_widget.dart';

class EnterAssetsUserDetailss extends StatefulWidget {
  const EnterAssetsUserDetailss({super.key});

  @override
  State<EnterAssetsUserDetailss> createState() =>
      _EnterAssetsUserDetailssState();
}

class _EnterAssetsUserDetailssState extends State<EnterAssetsUserDetailss> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 15, 20, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget.mainText('عمیر اقبال', color: Colors.black),
              TextWidget.mainText('00000',
                  color: Colors.black, fontFamily: 'poppins'),
              TextWidget.mainText('حسن گلاس', color: Colors.black),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0, 20, 0),
          child: Divider(color: Colors.black),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(AssetsPath.icon1),
              Image.asset(AssetsPath.icon2),
              Image.asset(AssetsPath.icon3),
              Image.asset(AssetsPath.icon4)
            ],
          ),
        )
      ],
    );
  }
}
