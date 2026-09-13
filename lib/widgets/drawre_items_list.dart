import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  const new({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', image: Assets.assetsCategory2),
    DrawerItemModel(title: 'My Transaction', image: Assets.assetsConvertCard),
    DrawerItemModel(title: 'Statistic', image: Assets.assetsGraph),
    DrawerItemModel(title: 'Wallet Account', image: Assets.assetsCategory2),
    DrawerItemModel(title: 'My Investment', image: Assets.assetsChart2),
  ];

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: DrawerItemsList.items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (index != activeIndex) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              isActive: activeIndex == index,
              title: DrawerItemsList.items[index].title,
              image: DrawerItemsList.items[index].image,
            ),
          ),
        );
      },
    );
  }
}
