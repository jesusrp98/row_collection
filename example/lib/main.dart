import 'package:flutter/material.dart';
import 'package:row_collection/row_collection.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row collection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row collection'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          Card(
            child: RowLayout(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                RowItem.text('English', 'Hello'),
                RowItem.text('Español', 'Hola'),
                Separator.divider(),
                RowItem.text('English', 'Bye'),
                RowItem.text('Español', 'Adiós'),
              ],
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: RowLayout(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                RowItem.text(
                  'English',
                  'Hello',
                  titleStyle: TextStyle(color: Colors.blue),
                  descriptionStyle: TextStyle(fontSize: 18),
                ),
                RowItem.text(
                  'Español',
                  'Hola',
                  titleStyle: TextStyle(color: Colors.red),
                  descriptionStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
                Separator.divider(),
                RowItem.text(
                  'English',
                  'Bye',
                  titleStyle: TextStyle(color: Colors.blue),
                  descriptionStyle: TextStyle(fontStyle: FontStyle.italic),
                ),
                RowItem.text(
                  'Español',
                  'Adiós',
                  titleStyle: TextStyle(color: Colors.red),
                  descriptionStyle: TextStyle(letterSpacing: 3),
                ),
              ],
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: RowLayout(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                RowItem.icon('Firefox', true),
                RowItem.icon('Chrome', false),
                Separator.divider(),
                RowItem.icon(
                  'Firefox',
                  true,
                  iconColor: Theme.of(context).accentColor,
                ),
                RowItem.icon(
                  'Chrome',
                  false,
                  iconColor: Theme.of(context).accentColor,
                ),
              ],
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: RowLayout(
              padding: EdgeInsets.all(16),
              children: <Widget>[
                RowItem.clickable(
                  'Android',
                  'Click here',
                  onTap: () => print('Clicked!'),
                ),
                RowItem.clickable(
                  'iOS',
                  'Click here',
                  onTap: () => print('Clicked!'),
                ),
                Separator.divider(),
                RowItem.clickable(
                  'Windows Phone',
                  'Don\'t click',
                ),
                RowItem.clickable(
                  'Symbian',
                  'Don\'t click',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
