import 'package:flutter/material.dart';
import 'package:flutter_app/LanguageText.dart';
import 'package:flutter_app/containers/CenteredVerticalButtons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';

class Resume extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final url = useState("/");
    final badgeAsset = "assets/images/dashboard.svg";
    final appDetails = LanguageText.pageContents['meta'];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(
            child: Text(appDetails['name'], style: TextStyle(color: Colors.deepOrange, fontSize: 34, fontWeight: FontWeight.bold),),
          ),
          Center(
              child: SvgPicture.asset(
                badgeAsset,
                placeholderBuilder: (context) => CircularProgressIndicator(),
                height: 128.0,
          )),
          CenteredVerticalButtons()
        ]);
  }
}
