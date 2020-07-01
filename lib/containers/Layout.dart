import 'package:flutter/material.dart';

import 'package:flutter_app/containers/CenteredVerticalButtons.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Handles top and bottom
class Layout extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final url = useState("/");

    return Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text("test"),
          CenteredVerticalButtons()
        ]);
  }
}
