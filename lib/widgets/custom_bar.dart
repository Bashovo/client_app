import 'package:client_app/constants/colors_constants.dart';
import 'package:flutter/material.dart';

class CustomBar extends StatelessWidget {
  final Widget leading;
  final Widget action;
  final Widget title;
  final bool hasDivider;
  CustomBar({this.leading, this.action, this.title, this.hasDivider = true});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: leading,
          actions: [action ?? Text('')],
          title: title,
          centerTitle: true,
          backgroundColor: AppColor.transparent,
          elevation: 0.0,
        ),
        hasDivider
            ? Divider(
                color: AppColor.grey03.withOpacity(0.2),
                thickness: 0.5,
                height: 0.0,
              )
            : Container(height: 0.0)
      ],
    );
  }
}
