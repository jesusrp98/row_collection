import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

/// ROW LAYOUR WIDGET
/// This widget helps developers create a layout, full of widgets,
/// with a [Separator.spacer] widget. You can stablish other parameters.
class RowLayout extends StatelessWidget {
  final List<Widget> children;
  final EdgeInsets padding;
  final double space;

  RowLayout({
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

  factory RowLayout.spacer({
    Key key,
    @required List<Widget> children,
    EdgeInsets padding,
    double space = 12,
  }) {
    return RowLayout(
      children: children,
      padding: padding,
    );
  }

  /// This method receives a [list] object, and intercalate its
  /// content with [Separator.spacer] widgets. It takes care about
  /// the last element of the list, as well as the possibility of
  /// the [list] object to have a [Separator.divider] object.
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
