import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

class LayoutSeparated extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double space;

  LayoutSeparated({
    Key key,
    @required this.children,
    this.padding = EdgeInsets.zero,
    this.space = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Column(
        children: _intercalateSpacer(children),
      ),
    );
  }

  List<Widget> _intercalateSpacer(List<Widget> list) {
    return list
        .map((item) => list.last != item &&
                item.runtimeType != Divider &&
                list[list.indexOf(item) + 1].runtimeType != Divider
            ? Column(children: [item, Separator.spacer(space: space)])
            : item)
        .toList();
  }
}
