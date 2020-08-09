import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Navigation Drawer'),
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
          child: new ListView(
        children: [
          new UserAccountsDrawerHeader(
            accountName: new Text('Badal Agarwal | Flutter Dev'),
            accountEmail: new Text('badal.agarwal1369@gmail.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.white,
              child: new Text('BA'),
            ),
          ),
          new ListTile(
            title: Text('Home'),
            trailing: new Icon(Icons.business_center),
          ),
          new ListTile(
            title: Text('About'),
            trailing: new Icon(Icons.child_care),
          ),
          new ListTile(
            title: Text('Contact'),
            trailing: new Icon(Icons.call),
          ),
          new ListTile(
            title: Text('Profile'),
            trailing: new Icon(Icons.account_circle),
          ),
          new ListTile(
            title: Text('Cart'),
            trailing: new Icon(Icons.shopping_cart),
          ),
          new ListTile(
            trailing: new Icon(Icons.backspace),
            title: Text('Close'),
            onTap: () => Navigator.of(context).pop(),
          ),
        ],
      )),
      body: new Container(
          child: new Center(
        child: new Text(
            'Visit https://github.com/badal-ag for more Exciting codes related to App and Web Development.'),
      )),
    );
  }
}
