// ignore_for_file: prefer_const_constructors

import 'package:audire_application_1/presentation/audire/screen_audire.dart';
import 'package:audire_application_1/presentation/downloads/screen_downloads.dart';
import 'package:audire_application_1/presentation/home/screen_home.dart';
import 'package:audire_application_1/presentation/Video/screen_videos.dart';

import 'package:flutter/material.dart';

class ScreenMainPage extends StatefulWidget {
  const ScreenMainPage({Key? key}) : super(key: key);

  @override
  State<ScreenMainPage> createState() => _ScreenMainPageState();
}

class _ScreenMainPageState extends State<ScreenMainPage> {
  int _currentSelectedIndex = 0;
  final _pages = [
    ScreenHome(),
    Screenaudire(),
    Screenvideos(),
    Screendownloads()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentSelectedIndex,
        onTap: (newIndex) {
          setState(() {
            _currentSelectedIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.hearing), label: 'Audire'),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_label), label: 'Videos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.arrow_drop_down_circle_rounded),
              label: 'downloads')
        ],
      ),
    );
  }
}
