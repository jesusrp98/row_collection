import 'package:flutter/material.dart';

/// ICON COLOR CLASS
/// It defines the default colors used in the [RowItem.icon] widget.
/// The [positive] color will be used when the boolean parameter is TRUE,
/// the [negative] color when it's FALSE, and when its value is considered NULL,
/// it will pick the [empty] color.
class IconColor {
  static const Color positive = Colors.green;
  static const Color negative = Colors.red;
  static const Color empty = Colors.blueGrey;
}

/// ROW ITEM WIDGET
/// This widget has been designed to represent a text, with its associated value.
/// The [title] widget will be located at the left of the [RowItem] widget,
/// and the [description] widget, at the right.
class RowItem extends StatelessWidget {
  /// Main text of the widget, located at the left.
  final Widget title;

  /// Associated value of the [title] parameter, localed at the right.
  final Widget description;

  const RowItem({
    Key key,
    @required this.title,
    @required this.description,
  })  : assert(title != null),
        assert(description != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: title,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerRight,
            child: description,
          ),
        ),
      ],
    );
  }

  /// ROW ITEM: TEXT
  /// Builds a 'text-to-text' widget. Useful when the associated
  /// value can be represented with a [Text] widget.
  factory RowItem.text(
    String title,
    String description, {
    Key key,
    TextStyle titleStyle,
    TextStyle descriptionStyle,
  }) {
    return RowItem(
      key: key,
      title: _text(title, style: titleStyle),
      description: _text(description, style: descriptionStyle),
    );
  }

  /// ROW ITEM: ICON
  /// Builds a 'text-to-boolean' widget. Useful when the associated
  /// value with a boolean value, which can be represented with an icon.
  factory RowItem.icon(
    String title,
    bool status, {
    Key key,
    TextStyle titleStyle,
    Color iconColor,
    double size = 16,
  }) {
    return RowItem(
      key: key,
      title: _text(title, style: titleStyle),
      description: _icon(
        status,
        color: iconColor,
        size: size,
      ),
    );
  }

  /// ROW ITEM: CLICKABLE
  /// Builds a 'text-to-text' widget. It allows the associated value,
  /// in this case a [Text] widget, to be clickable by the user.
  factory RowItem.clickable(
    String title,
    String description, {
    Key key,
    TextStyle titleStyle,
    TextStyle descriptionStyle,
    VoidCallback onTap,
  }) {
    return RowItem(
      key: key,
      title: _text(title, style: titleStyle),
      description: AbsorbPointer(
        absorbing: onTap == null,
        child: InkResponse(
          child: _text(
            description,
            style: descriptionStyle,
            clickable: onTap != null,
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  /// Returns an icon based on the [value] variable.
  /// Various [Icon] parameters can be set as well.
  static Widget _icon(bool value, {Color color, double size}) {
    final Color finalColor = color ??
        (value == null
            ? IconColor.empty
            : (value ? IconColor.positive : IconColor.negative));

    return Icon(
      value == null ? Icons.help : (value ? Icons.check_circle : Icons.cancel),
      color: finalColor,
      size: size,
    );
  }

  /// Returns a [Text] widget, using the [text] variable.
  /// It checks if can be clickable, with the [clickable] parameter.
  /// Various of its paremeters can be set.
  static Widget _text(String text, {TextStyle style, bool clickable = false}) {
    final TextStyle finalStyle = style != null
        ? style.copyWith(
            decoration:
                clickable ? TextDecoration.underline : TextDecoration.none,
          )
        : TextStyle(
            decoration:
                clickable ? TextDecoration.underline : TextDecoration.none,
          );

    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      style: finalStyle,
    );
  }
}
