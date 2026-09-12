import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.title,
    required this.image,
    required this.isActive,
  });
  final bool isActive;
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: isActive ? AppStyles.styleSemiBold16 : AppStyles.styleMedium16,
      ),
    );
  }
}
