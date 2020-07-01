import 'package:flutter/material.dart';
import 'package:flutter_app/LanguageText.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
const PAGE_NAMESPACE = 'dashboard';
/// Handles the widgets for buttons at the top
class CenteredVerticalButtons extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final page = useState("/");
    var pageContents = LanguageText.pageContents[PAGE_NAMESPACE];
    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FlatButton(
              onPressed: () => (page.value = "play"),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                      child: Container(width: 100, child: Text(pageContents["button_play_script"], textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 24,color: Colors.black54
                      )))
                  )
                ],
              ),
              textColor: Colors.black,
              shape: new RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                    width: 6,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: new BorderRadius.circular(12.0))),
          SizedBox(height: 10),
          FlatButton(
              onPressed: () => (page.value = "continue"),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Expanded(
                      child: Container(width: 100, child: Text(pageContents["button_add_script"], textAlign: TextAlign.center, style: TextStyle(
                          fontSize: 24,color: Colors.black54
                      )))
                  )
                ],
              ),
              textColor: Colors.black,
              shape: new RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black54,
                    width: 6,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: new BorderRadius.circular(12.0))),
        ]);
  }
}
