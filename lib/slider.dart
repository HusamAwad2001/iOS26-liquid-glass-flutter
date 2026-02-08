import 'package:cupertino_native/cupertino_native.dart';
import 'package:flutter/cupertino.dart';

class Slider extends StatefulWidget {
  const Slider({super.key});

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  double _defaultSliderValue = 50;
  double _coloredSliderValue = 50;
  double _stepSliderValue = 50;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: Text('Slider'),
      ),
      child: SafeArea(
        child: ListView(
          padding: const .symmetric(horizontal: 24, vertical: 14),
          children: [
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Default'),
                Text('Value: ${_defaultSliderValue.toStringAsFixed(1)}'),
              ],
            ),
            CNSlider(
              value: _defaultSliderValue,
              min: 0,
              max: 100,
              onChanged: (value) => setState(() {
                _defaultSliderValue = value;
              }),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('With Color'),
                Text('Value: ${_coloredSliderValue.toStringAsFixed(1)}'),
              ],
            ),
            CNSlider(
              value: _coloredSliderValue,
              min: 0,
              max: 100,
              enabled: true,
              color: CupertinoColors.systemPink,
              onChanged: (value) => setState(() {
                _coloredSliderValue = value;
              }),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('Step Slider'),
                Text('Value: ${_stepSliderValue.toStringAsFixed(1)}'),
              ],
            ),
            CNSlider(
              value: _stepSliderValue,
              min: 0,
              max: 100,
              enabled: true,
              step: 10,
              onChanged: (value) => setState(() {
                _stepSliderValue = value;
              }),
            ),
            SizedBox(height: 40),
            Text('Disabled'),
            CNSlider(
              value: 50,
              min: 0,
              max: 100,
              enabled: false,
              onChanged: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}
