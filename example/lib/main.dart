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
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  RowItem.textRow('English', 'Hello'),
                  Separator.spacer(),
                  RowItem.textRow('Español', 'Hola'),
                  Separator.divider(),
                  RowItem.textRow('English', 'Bye'),
                  Separator.spacer(),
                  RowItem.textRow('Español', 'Adiós'),
                ],
              ),
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  RowItem.textRow(
                    'English',
                    'Hello',
                    titleStyle: TextStyle(color: Colors.blue),
                    descriptionStyle: TextStyle(fontSize: 18),
                  ),
                  Separator.spacer(),
                  RowItem.textRow(
                    'Español',
                    'Hola',
                    titleStyle: TextStyle(color: Colors.red),
                    descriptionStyle: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Separator.divider(),
                  RowItem.textRow(
                    'English',
                    'Bye',
                    titleStyle: TextStyle(color: Colors.blue),
                    descriptionStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  Separator.spacer(),
                  RowItem.textRow(
                    'Español',
                    'Adiós',
                    titleStyle: TextStyle(color: Colors.red),
                    descriptionStyle: TextStyle(letterSpacing: 3),
                  ),
                ],
              ),
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  RowItem.iconRow('Firefox', true),
                  Separator.spacer(),
                  RowItem.iconRow('Chrome', false),
                  Separator.spacer(),
                  RowItem.iconRow('Opera', null),
                  Separator.divider(),
                  RowItem.iconRow(
                    'Firefox',
                    true,
                    iconColor: Theme.of(context).accentColor,
                  ),
                  Separator.spacer(),
                  RowItem.iconRow(
                    'Chrome',
                    false,
                    iconColor: Theme.of(context).accentColor,
                  ),
                  Separator.spacer(),
                  RowItem.iconRow(
                    'Opera',
                    null,
                    iconColor: Theme.of(context).accentColor,
                  ),
                ],
              ),
            ),
          ),
          Separator.cardSpacer(),
          Card(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  RowItem.clickable(
                    'Android',
                    'Click here',
                    onTap: () => print('Clicked!'),
                  ),
                  Separator.divider(),
                  RowItem.clickable(
                    'iOS',
                    'Don\'t click',
                    isClickable: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
