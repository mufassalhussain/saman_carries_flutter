import 'package:flutter/material.dart';
import '../../../widgets/item_row_widget.dart';

class EnterAssetsItems extends StatefulWidget {
  const EnterAssetsItems({super.key});

  @override
  State<EnterAssetsItems> createState() => _EnterAssetsItemsState();
}

class _EnterAssetsItemsState extends State<EnterAssetsItems> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReusableItemRow(
          itemName: 'منی ریفریجریٹر',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: '	ریفریجریٹر',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'فریزر',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'واشنگ مشین',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'واشنگ مشین ڈرائر کے ساتھ',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'اے سی',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'واٹر ڈسپنسر',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'ایل سی  ڈی ٹی وی',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'پنکھا',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'مائیکرو ویو',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
        ReusableItemRow(
          itemName: 'چولہا',
          onRemovePressed: () {},
          onAddPressed: () {},
        ),
      ],
    );
  }
}
