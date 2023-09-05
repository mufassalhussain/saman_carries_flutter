import 'package:flutter/material.dart';
import 'package:saman_carries_flutter/utils/assets_path.dart';

import '../configs/size_configs.dart';
import '../themes/colors.dart';

class ReusableItemRow extends StatelessWidget {
  final String itemName;
  final Function() onRemovePressed;
  final Function() onAddPressed;

  const ReusableItemRow({
    super.key,
    required this.itemName,
    required this.onRemovePressed,
    required this.onAddPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onRemovePressed,
            child: Image.asset(AssetsPath.minusIco),
          ),
          const SizedBox(
            width: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.itemTileClr,
              borderRadius: BorderRadius.circular(5),
            ),
            height: getHeight(40),
            width: getWidth(200),
            child: Text(
              itemName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: onRemovePressed,
            child: Image.asset(AssetsPath.plusIco),
          ),
        ],
      ),
    );
  }
}
