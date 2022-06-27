import 'package:audire_application_1/login.dart';
import 'package:audire_application_1/main.dart';
import 'package:audire_application_1/presentation/main_page/screen_main_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    checkUserLoggedIn();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'AUDIRE',
          style: TextStyle(
              color: Colors.white,
              fontSize: 60,
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.black),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future<void> gotoLogin() async {
    await Future.delayed(const Duration(seconds: 5));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => MyLogin(),
      ),
    );
  }

  Future<void> checkUserLoggedIn() async {
    final _sharedprefs = await SharedPreferences.getInstance();
    final _userLoggedIN = _sharedprefs.getBool(SAVE_KEY_NAME);
    if (_userLoggedIN == null || _userLoggedIN == false) {
      gotoLogin();
    } else {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (ctx1) => const ScreenMainPage()));
    }
  }
}
