import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// ROW LAYOUR WIDGET
/// This widget helps developers create a layout, full of widgets,
/// with a [Separator.spacer] widget. You can stablish other parameters.
class RowLayout extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double space;

  const RowLayout({
    Key key,
    this.children,
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

  /// Named constructor meant to be used inside [Card] widgets.
  /// It automatically applies a padding of [12] for all edges.
  factory RowLayout.card({List<Widget> children, double space}) {
    return RowLayout(
      children: children,
      padding: EdgeInsets.all(12),
      space: space,
    );
  }

  /// This method receives a [list] object, and intercalate its
  /// content with [Separator.spacer] widgets, using a 'for' loop.
  List<Widget> _intercalateSpacer(List<Widget> list) {
    final List<Widget> auxList = [];

    for (int i = 0; i < list.length * 2 - 1; ++i) {
      if (i.isEven)
        auxList.add(list[i ~/ 2]);
      else
        auxList.add(Separator.spacer(space: space));
    }

    return auxList;
  }
}
