# Row Collection
[![Package](https://img.shields.io/pub/v/row_collection.svg?style=for-the-badge)](https://pub.dartlang.org/packages/row_collection)
[![License](https://img.shields.io/github/license/jesusrp98/row_collection.svg?style=for-the-badge)](https://www.gnu.org/licenses/gpl-3.0.en.html)
[![Stars](https://img.shields.io/github/stars/jesusrp98/row_collection.svg?style=for-the-badge)](https://github.com/jesusrp98/row_collection/stargazers)
[![PayPal](https://img.shields.io/badge/Donate-PayPal-blue.svg?style=for-the-badge)](https://www.paypal.com/paypalme/my/profile)
[![Patreon](https://img.shields.io/badge/Support-Patreon-orange.svg?style=for-the-badge)](https://www.patreon.com/jesusrp98)

This Dart package offers developers a streamlined library of Flutter widgets, useful for displaying information in a row-based layout.
As the baseline widget, there's the `RowItem` widget. It offers a multitude of options:
* **Text information:** Useful when the associated value can be represented with a simple `Text` widget.
* **Boolean information:** Useful when the associated value with a `boolean` value, which can be represented with an icon.
* **Interactive information:** It allows the associated value, in this case a `Text` widget, to be clickable by the user.

<p align="center">
  <img src="https://raw.githubusercontent.com/jesusrp98/row_collection/master/screenshots/0.png" width="415" hspace="8">
  <img src="https://raw.githubusercontent.com/jesusrp98/row_collection/master/screenshots/1.png" width="415" hspace="8">
</p>


This library offers ways to separate this and other interface elements, using the already-implemented `Separator` class:
* **Spacers:** This kind of elements helps to separate UI elements, such as `RowItem` widgets.
* **Dividers:** Helpful when you want to emphasize separation between sections.
* **Row layouts:** Separate widgets automatically using `Separator.spacer` items.
* **Empty elements:** Useful when you need to use an 'empty' widget, with `height` & `width` values equal to `0`.

<p align="center">
  <img src="https://raw.githubusercontent.com/jesusrp98/row_collection/master/screenshots/2.png" width="415" hspace="8">
  <img src="https://raw.githubusercontent.com/jesusrp98/row_collection/master/screenshots/3.png" width="415" hspace="8">
</p>

Both kind of widgets (`RowItem` & `Separator`) offer ways to be customizable. For instance, you can use the `style` parameter in the `RowItem` widgets to select a custom text theme.

## Example
Here is an example of a simple use of this package. If you want to take a deeper look at the example, take a look at the [example/](https://github.com/jesusrp98/row_collection/tree/master/example) folder provided with the project.
```
RowLayout.body(
  children: <Widget>[
    RowItem.text('English', 'Hello'),
    RowItem.text('Español', 'Hola'),
    Separator.divider(),
    RowItem.text('English', 'Bye'),
    RowItem.text('Español', 'Adiós'),
  ],
),
```
Here's another way to achieve the same layout, using the `Column` widget.
```
Column(
  children: <Widget>[
    RowItem.text('English', 'Hello'),
    Separator.spacer(),
    RowItem.text('Español', 'Hola'),
    Separator.divider(),
    RowItem.text('English', 'Bye'),
    Separator.spacer(),
    RowItem.text('Español', 'Adiós'),
  ],
),
```

## Getting Started
This project is a starting point for a Dart [package](https://flutter.io/developing-packages/), a library module containing code that can be shared easily across multiple Flutter or Dart projects.

For help getting started with Flutter, view our [online documentation](https://flutter.io/docs), which offers tutorials, samples, guidance on mobile development, and a full API reference.

## Built with
* [Flutter](https://flutter.io/) - Beatiful native apps in record time.
* [Android Studio](https://developer.android.com/studio/index.html/) - Tools for building apps on every type of Android device.
* [Visual Studio Code](https://code.visualstudio.com/) - Code editing. Redefined.

## Authors
* **Jesús Rodríguez** - you can find me on [GitHub](https://github.com/jesusrp98), [Twitter](https://twitter.com/jesusrp98) & [Reddit](https://www.reddit.com/user/jesusrp98).

## License
This project is licensed under the GNU GPL v3 License - see the [LICENSE.md](LICENSE.md) file for details.
