import 'package:flutter/material.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log out'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
