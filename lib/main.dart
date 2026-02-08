import 'package:flutter/cupertino.dart';

import 'toggle_switch.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: ToggleSwitch(),
    );
  }
}
