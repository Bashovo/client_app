import 'package:client_app/constants/fonts_constants.dart';
import 'package:client_app/views/auth/sign_up/widgets/back_arrow.dart';
import 'package:client_app/widgets/custom_bar.dart';
import 'package:client_app/config/sizes.dart';
import 'package:client_app/widgets/medium_text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(0, 60.h),
        child: CustomBar(
          leading: BackArrow(),
          title: _screenTitle,
        ),
      ),
    //  body: ChatList(),
    );
  }

  final Widget _screenTitle = MediumText(
    text: "Chat",
    size: AppFont.xLarge,
  );
}
