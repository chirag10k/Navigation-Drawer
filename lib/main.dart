import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'new_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: defaultTargetPlatform == TargetPlatform.iOS ? Colors.grey[50] : 0.0,
      ),
      home: new HomePage(),
      /*routes: <String , WidgetBuilder>{
        "/a": (BuildContext context)=> new NewPage("New Page"),
      }*/

    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Drawer App"),
        elevation: defaultTargetPlatform == TargetPlatform.iOS ? 0.0 : 5.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Chirag Saraogi"),
              accountEmail: new Text("chiragsaraogi10k@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                    ?Colors.deepPurple
                    :Colors.indigo,
                child: new Text('C'),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                      ?Colors.deepPurple
                      :Colors.indigo,                                              
                  child: new Text('M'),
                ),
              ],
            ),
            //new UserScrollNotification(metrics: null, context: null),
            new ListTile(
              title: new Text("Page One"),
              trailing:  new Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new NewPage("Page One")));
              },
            ),
            new ListTile(
              title: new Text("Page Two"),
              trailing:  new Icon(Icons.arrow_upward),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new NewPage("Page Two")));
              }
            ),
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing:  new Icon(Icons.close),
              onTap: ()=> Navigator.of(context).pop(),
            )
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Home Page"),
        ),
      ),
    );
  }
}

