import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Listview 範例')),
        body: BodyWidget(),
      ),
    );
  }
}
String oneUrl = 'https://i.stack.imgur.com/YN0m7.png';
String twoUrl = 'https://i.stack.imgur.com/wKzo8.png';
String threeUrl = 'https://i.stack.imgur.com/Qt4JP.png';

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(oneUrl),
          ),
          title: Text('第一項'),
          subtitle: Text('項目說明'),
          onTap: () {
            print('點選第一項');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(twoUrl),
          ),
          title: Text('第二項'),
          subtitle: Text('項目說明'),
          onTap: () {
            print('點選第二項');
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(threeUrl),
          ),
          title: Text('第三項'),
          subtitle: Text('項目說明'),
          onTap: () {
            print('點選第三項');
          },
        ),
      ],
    );
  }
}