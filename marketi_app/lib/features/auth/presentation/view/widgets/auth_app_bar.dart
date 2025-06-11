import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi_app/core/resources/extension_manager.dart';
import 'package:marketi_app/features/home/presentation/view/home_screen.dart';

import '../../../../../core/resources/app_sizes.dart';
import '../../../../../core/resources/assets_manager.dart';
import '../../../../../core/resources/styles_manager.dart';

class AuthAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppBar({
    super.key,
    this.title,
    this.hasAction = false,
  });
  final String? title;
  final bool hasAction;

//Todo: as custom.appBar
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? "",
        style: StylesManager.font16NavyMedium,
      ),
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SvgPicture.asset(AssetsManager.backIcon),
        ),
      ),
      actions: !hasAction ? null : [UserImage()],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppSizes.appBarHight);
}
