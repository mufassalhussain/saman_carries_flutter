import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/screen/enter_assets/components/enter_assets_user_detials.dart';

import '../../configs/size_configs.dart';
import '../../themes/colors.dart';
import 'components/enter_assets_items.dart';

class EnterAssets extends StatefulWidget {
  static const routeName = '/enter_assets';

  const EnterAssets({super.key});

  @override
  State<EnterAssets> createState() => _EnterAssetsState();
}

class _EnterAssetsState extends State<EnterAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const EnterAssetsUserDetailss(),
            const EnterAssetsItems(),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: getWidth(300),
              height: getHeight(100),
              decoration: BoxDecoration(
                color: AppColors.fillassetsClr,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                  height: getHeight(55),
                  width: getWidth(110),
                  color: AppColors.mainBackgroundClr,
                  child: const Text(
                    'واپس',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
