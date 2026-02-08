import 'package:cupertino_native/cupertino_native.dart';
import 'package:flutter/cupertino.dart';

class SegmentedControl extends StatefulWidget {
  const SegmentedControl({super.key});

  @override
  State<SegmentedControl> createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  int _basicSegmentedControlIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: Text('Segmented Control'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const .symmetric(horizontal: 24, vertical: 14),
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Basic'),
                Text('Selected: ${_basicSegmentedControlIndex + 1}'),
              ],
            ),
            SizedBox(height: 12),
            CNSegmentedControl(
              labels: ['One', 'Two', 'Three'],
              shrinkWrap: true,
              selectedIndex: _basicSegmentedControlIndex,
              onValueChanged: (value) => setState(() {
                _basicSegmentedControlIndex = value;
              }),
            ),
            SizedBox(height: 12),
            CNSegmentedControl(
              labels: ['One', 'Two', 'Three'],
              selectedIndex: _basicSegmentedControlIndex,
              onValueChanged: (value) => setState(() {
                _basicSegmentedControlIndex = value;
              }),
            ),
          ],
        ),
      ),
    );
  }
}
