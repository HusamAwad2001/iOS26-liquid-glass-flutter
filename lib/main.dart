import 'package:flutter/cupertino.dart';

import 'popup_menu_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: PopupMenuButton(),
    );
  }
}
