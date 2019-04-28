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
                  RowItem.text('English', 'Hello'),
                  Separator.spacer(),
                  RowItem.text('Español', 'Hola'),
                  Separator.divider(),
                  RowItem.text('English', 'Bye'),
                  Separator.spacer(),
                  RowItem.text('Español', 'Adiós'),
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
                  RowItem.text(
                    'English',
                    'Hello',
                    titleStyle: TextStyle(color: Colors.blue),
                    descriptionStyle: TextStyle(fontSize: 18),
                  ),
                  Separator.spacer(),
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
                  Separator.spacer(),
                  RowItem.text(
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
                  RowItem.icon('Firefox', true),
                  Separator.spacer(),
                  RowItem.icon('Chrome', false),
                  Separator.divider(),
                  RowItem.icon(
                    'Firefox',
                    true,
                    iconColor: Theme.of(context).accentColor,
                  ),
                  Separator.spacer(),
                  RowItem.icon(
                    'Chrome',
                    false,
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
                  Separator.spacer(),
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
                  Separator.spacer(),
                  RowItem.clickable(
                    'Symbian',
                    'Don\'t click',
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
