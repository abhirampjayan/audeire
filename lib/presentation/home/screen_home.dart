
import 'package:audire_application_1/drawer_item.dart';
import 'package:audire_application_1/login.dart';
import 'package:audire_application_1/main.dart';
import 'package:audire_application_1/presentation/pages/feedback.dart';
import 'package:audire_application_1/presentation/pages/logout.dart';
import 'package:audire_application_1/presentation/pages/privacy.dart';

import 'package:audire_application_1/presentation/pages/sign.dart';
import 'package:audire_application_1/splash.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Homescreen"),
      ),
body: Center(child: Text("Welcome to home screen")),
      drawer: Drawer(
        // width: 12,
        backgroundColor: Colors.black,
        child: Material(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  headerWidget(),
                  const SizedBox(
                    height: 40,
                  ),
                  const Divider(
                    thickness: 1,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  DrawerItem(
                    name: 'Sign Language',
                    icon: Icons.language,
                    onPressed: () => onItemPressed(context, index: 0),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Privacy',
                      icon: Icons.privacy_tip_rounded,
                      onPressed: () => onItemPressed(context, index: 1)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'FeedBack',
                      icon: Icons.feedback,
                      onPressed: () => onItemPressed(context, index: 2)),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Log Out',
                      icon: Icons.logout,
                      onPressed: () {
                        signout(context);
                      }),
                  const SizedBox(
                    height: 30,
                  ),
                  const Divider(
                    thickness: 1,
                    height: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DrawerItem(
                      name: 'Setting',
                      icon: Icons.settings,
                      onPressed: () => onItemPressed(context, index: 4)),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const sign()));
        break;
    }
    switch (index) {
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Privacy()));
        break;
    }
    switch (index) {
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const FeedBack()));
        break;
    }
  }

  signout(BuildContext ctx) async {
    final _sharedPrefs = await SharedPreferences.getInstance();
    await _sharedPrefs.clear();
    Navigator.of(ctx).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx1) => const ScreenSplash()),
        (route) => false);
  }

  Widget headerWidget() {
    const url =
        'https://media.istockphoto.com/photos/learn-to-love-yourself-first-picture-id1291208214?b=1&k=20&m=1291208214&s=170667a&w=0&h=sAq9SonSuefj3d4WKy4KzJvUiLERXge9VgZO-oqKUOo=';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Audire', style: TextStyle(fontSize: 30, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
          ],
        )
      ],
    );
  }
}
