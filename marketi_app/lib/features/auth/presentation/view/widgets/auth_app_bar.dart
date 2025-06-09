import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/app_sizes.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "",
        style: StylesManager.font16NavyMedium,
      ),
      leading: Padding(
        padding: const EdgeInsets.all(6.0),
        child: SvgPicture.asset(AssetsManager.backIcon),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.appBarHight);
}
