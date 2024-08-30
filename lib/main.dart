import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Responsive Design'),
            ),
            drawer: AppDrawer(),
            body: HomeContent(),
          );
        }


        else if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Responsive Design'),
            ),
            body: Row(
              children: [
                AppDrawer(),
                Expanded(
                  child: HomeContent(),
                ),
              ],
            ),
          );
        }


        else if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Responsive Design'),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
            ),
            drawer: AppDrawer(),
            body: HomeContent(),
          );
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('Responsive Design'),
          ),
          body: HomeContent(),
        );
      },
    );
  }
}


class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Text(
              'SKILL UP NOW\nTAP HERE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          ListTile(
            leading: Icon(Icons.library_books),
            title: Text('Episodes'),
            onTap: () {

            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {

            },
          ),
        ],
      ),
    );
  }
}


class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'FLUTTER WEB. THE BASICS',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {},
              child: Text('Join course'),
            ),
          ],
        ),
      ),
    );
  }
}
