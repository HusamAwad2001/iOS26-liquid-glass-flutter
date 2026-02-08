import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_native/cupertino_native.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class TabData {
  final String label;
  final String icon;

  const TabData({required this.label, required this.icon});
}

class _TabBarScreenState extends State<TabBarScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedTabIndex = 0;

  List<TabData> tabs = [
    TabData(label: 'Home', icon: 'homepod.and.appletv.fill'),
    TabData(label: 'Videos', icon: 'video.badge.waveform.fill'),
    TabData(label: 'Messages', icon: 'message.badge.waveform.fill'),
    TabData(label: 'Terminal', icon: 'apple.terminal.on.rectangle.fill'),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController.addListener(updateTabIndex);
  }

  void updateTabIndex() {
    if (tabController.index != selectedTabIndex) {
      setState(() {
        selectedTabIndex = tabController.index;
      });
    }
  }

  void onTabTap(int index) {
    setState(() {
      selectedTabIndex = index;
    });
    tabController.animateTo(index);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Stack(
        children: [
          Positioned.fill(
            child: TabBarView(
              controller: tabController,
              children: tabs
                  .map((tab) => ImageTabScreen(label: tab.label))
                  .toList(),
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: CNTabBar(
              items: tabs.map((tab) {
                return CNTabBarItem(label: tab.label, icon: CNSymbol(tab.icon));
              }).toList(),
              currentIndex: selectedTabIndex,
              tint: CupertinoColors.destructiveRed,
              height: 85,
              onTap: onTabTap,
            ),
          ),
        ],
      ),
    );
  }
}

class ImageTabScreen extends StatelessWidget {
  final String label;
  const ImageTabScreen({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: .expand,
      children: [
        Image.asset('assets/background.jpeg', fit: .cover),
        SafeArea(
          child: Align(
            alignment: .topCenter,
            child: Container(
              padding: .all(12),
              margin: .only(top: 12),
              decoration: BoxDecoration(
                color: CupertinoColors.black.withValues(alpha: 0.2),
                borderRadius: .circular(12),
              ),
              child: Text(
                label,
                style: TextStyle(fontSize: 18, color: CupertinoColors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
