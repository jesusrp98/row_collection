import 'package:flutter/material.dart';

/// ROW ITEM WIDGET
class RowItem extends StatelessWidget {
  final String title;
  final TextStyle style;
  final Widget description;

  RowItem({
    @required this.title,
    this.style,
    @required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Text(
            title,
            style: style,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ),
        Expanded(
          flex: 6,
          child: Align(
            alignment: Alignment.centerRight,
            child: description,
          ),
        ),
      ],
    );
  }

  /// Builds a normal Text-to-Text row item
  factory RowItem.textRow(
    String title,
    String description, {
    TextStyle titleStyle,
    TextStyle descriptionStyle,
  }) {
    return RowItem(
      title: title,
      style: titleStyle,
      description: _descriptionText(
        text: description,
        style: descriptionStyle,
      ),
    );
  }

  /// Builds a Text-to-Icon row item, to display a boolean status
  factory RowItem.iconRow(
    String title,
    bool status, {
    TextStyle titleStyle,
    Color iconColor,
  }) {
    return RowItem(
      title: title,
      style: titleStyle,
      description: _descriptionIcon(value: status, color: iconColor),
    );
  }

  /// Builds a Text-to-Text widget, but the description widget is clickable
  factory RowItem.clickable(
    String title,
    String description, {
    TextStyle titleStyle,
    TextStyle descriptionStyle,
    VoidCallback onTap,
    bool isClickable = true,
  }) {
    return RowItem(
      title: title,
      style: titleStyle,
      description: AbsorbPointer(
        absorbing: !isClickable,
        child: InkResponse(
          child: _descriptionText(
            text: description,
            style: descriptionStyle,
            clickable: isClickable,
          ),
          onTap: onTap,
        ),
      ),
    );
  }

  /// Return an icon based on the [value] variable
  static Widget _descriptionIcon({bool value, Color color}) {
    final Color finalColor = color ??
        (value == null
            ? IconColor.empty
            : (value ? IconColor.positive : IconColor.negative));

    return Icon(
      value == null ? Icons.help : (value ? Icons.check_circle : Icons.cancel),
      color: finalColor,
      size: 18,
    );
  }

  /// Returns a description text
  static Widget _descriptionText({
    String text,
    TextStyle style,
    bool clickable = false,
  }) {
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
      maxLines: 1,
      textAlign: TextAlign.end,
      style: finalStyle,
    );
  }
}

class IconColor {
  static const Color positive = Color(0xFF4CAF50);
  static const Color negative = Color(0xFFF44336);
  static const Color empty = Color(0xFF607D8B);
}
