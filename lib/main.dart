// ignore_for_file: prefer_const_constructors, unnecessary_import, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projekweb/homepage.dart';
import 'package:projekweb/profile.dart';
import 'package:projekweb/splashscreen.dart';
import 'package:projekweb/wisata.dart';
import 'package:projekweb/setting.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: splashscreen(),
      initialRoute: '/splashscreen',
      routes: {
        '/splashscreen': (context) => splashscreen(),
        '/appku': (context) => appku(),
      }
    );
  }
}

class appku extends StatefulWidget {
  const appku({super.key});

  @override
  State<appku> createState() => _appkuState();
}

class _appkuState extends State<appku> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.deepPurple[300],
        title: Text(
          "Journey Application",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: homepage(),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 215, 200, 241),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 58,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/images/nova.png'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Nova Rahma', 
                          style: TextStyle(
                            fontWeight: FontWeight.w500
                            ),
                          ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.check_circle, 
                          color: Colors.blue, 
                          size: 15, 
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => profile(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.beach_access_rounded),
              title: Text('Journey Categories'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => wisata(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => setting(),
                    ));
              },
            ),
            new Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              trailing: Icon(Icons.cancel),
              title: Text('Close'),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}