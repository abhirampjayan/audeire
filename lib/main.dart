import 'package:audire_application_1/core/colors/colors.dart';
import 'package:audire_application_1/presentation/home/screen_home.dart';

import 'package:audire_application_1/splash.dart';
import 'package:flutter/material.dart';
import 'package:audire_application_1/presentation/main_page/screen_main_page.dart';
import 'package:audire_application_1/login.dart';
import 'package:audire_application_1/register.dart';

const SAVE_KEY_NAME = 'UserLoggedIn';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    // home: const Home(),
    home: ScreenSplash(),
    routes: {
      'register': (context) => const MyRegister(),
      'login': (context) => MyLogin(),
    },
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "audire",
      theme: ThemeData(
          primarySwatch: Colors.blue,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: backgroundcolor,
          textTheme: const TextTheme(
            bodyText1: TextStyle(color: Colors.white),
            bodyText2: TextStyle(color: Colors.white),
          )),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const ScreenHome(),
        appBar: AppBar(
          title: const Text('Navigation Drawer'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Builder(builder: (context) {
          return Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width - 100,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.open_in_new, color: Colors.white),
                label: const Text(
                  'Open Navigation Drawer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        }));
  }
}
