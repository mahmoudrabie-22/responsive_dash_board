import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawre_items_list.dart';
import 'package:responsive_dash_board/widgets/user_info.dart';

class CustomDrawer extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            title: 'Mahmoud Rabie',
            subTitle: 'mahmoud@gmail.com',
            image: Assets.assetsAvatar,
          ),
          DrawerItemsList(),
          Expanded(child: SizedBox()),
          DrawerItem(
            title: 'Setting System',
            image: Assets.assetsSetting2,
            isActive: false,
          ),
          DrawerItem(
            title: 'Logout Account',
            image: Assets.assetsLogout,
            isActive: false,
          ),
          SizedBox(height: 48),
        ],
      ),
    );
  }
}
