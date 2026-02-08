import 'package:cupertino_native/cupertino_native.dart';
import 'package:flutter/cupertino.dart';

class ToggleSwitch extends StatefulWidget {
  const ToggleSwitch({super.key});

  @override
  State<ToggleSwitch> createState() => _ToggleSwitchState();
}

class _ToggleSwitchState extends State<ToggleSwitch> {
  bool _basicSwitchValue = true;
  bool _coloredSwitchValue = true;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: Text('Switch'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const .symmetric(horizontal: 24, vertical: 14),
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Basic: ${_basicSwitchValue ? 'On' : 'Off'}'),
                CNSwitch(
                  value: _basicSwitchValue,
                  onChanged: (value) {
                    setState(() {
                      _basicSwitchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Colored: ${_basicSwitchValue ? 'On' : 'Off'}'),
                CNSwitch(
                  value: _coloredSwitchValue,
                  color: CupertinoColors.systemPink,
                  onChanged: (value) {
                    setState(() {
                      _coloredSwitchValue = value;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Disabled'),
                CNSwitch(value: false, enabled: false, onChanged: (_) {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
