import 'package:cupertino_native/cupertino_native.dart';
import 'package:flutter/cupertino.dart';

class PopupMenuButton extends StatefulWidget {
  const PopupMenuButton({super.key});

  @override
  State<PopupMenuButton> createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenuButton> {
  final items = [
    CNPopupMenuItem(
      label: 'Heart',
      icon: CNSymbol(
        'heart.fill',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
    CNPopupMenuItem(
      label: 'Flame',
      icon: CNSymbol(
        'flame.fill',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
    CNPopupMenuItem(
      label: 'Music',
      icon: CNSymbol(
        'music.note',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
    CNPopupMenuDivider(),
    CNPopupMenuItem(
      label: 'Trash',
      icon: CNSymbol(
        'trash.fill',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
    CNPopupMenuItem(
      label: 'Exclamation',
      icon: CNSymbol(
        'exclamationmark.triangle.fill',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
    CNPopupMenuItem(
      label: 'flag',
      icon: CNSymbol(
        'flag.fill',
        size: 18,
        mode: CNSymbolRenderingMode.multicolor,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGroupedBackground,
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGroupedBackground,
        border: null,
        middle: Text('Popup Menu Button'),
      ),
      child: SafeArea(
        child: Padding(
          padding: const .all(16),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text('Icon Button'),
              CNPopupMenuButton.icon(
                buttonIcon: CNSymbol('ellipsis'),
                items: items,
                onSelected: (value) {
                  print(value);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
