import 'package:flutter/material.dart';

/// ROW ITEM WIDGET
class RowItem extends StatelessWidget {
  final Widget title, description;

  const RowItem({
    @required this.title,
    @required this.description,
  });

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

  /// Builds a normal Text-to-Text row item
  factory RowItem.text(
    String title,
    String description, {
    TextStyle titleStyle,
    TextStyle descriptionStyle,
  }) {
    return RowItem(
      title: _text(title, style: titleStyle),
      description: _text(description, style: descriptionStyle),
    );
  }

  /// Builds a Text-to-Icon row item, to display a boolean status
  factory RowItem.icon(
    String title,
    bool status, {
    TextStyle titleStyle,
    Color iconColor,
    double size = 16,
  }) {
    return RowItem(
      title: _text(title, style: titleStyle),
      description: _icon(
        status,
        color: iconColor,
        size: size,
      ),
    );
  }

  /// Builds a Text-to-Text widget, but the description widget is clickable
  factory RowItem.clickable(
    String title,
    String description, {
    TextStyle titleStyle,
    TextStyle descriptionStyle,
    VoidCallback onTap,
  }) {
    return RowItem(
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

  /// Return an icon based on the [value] variable
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

  /// Returns a description text
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

class IconColor {
  static const Color positive = Color(0xFF4CAF50);
  static const Color negative = Color(0xFFF44336);
  static const Color empty = Color(0xFF607D8B);
}
