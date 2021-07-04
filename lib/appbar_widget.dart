import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppbarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/images/icon_back.svg'),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/images/icon_out.svg'),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(100.0);
}
