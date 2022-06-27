import 'dart:ui';

import 'package:audire_application_1/core/colors/colors.dart';
import 'package:audire_application_1/core/constants.dart';
import 'package:audire_application_1/presentation/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screendownloads extends StatelessWidget {
  const Screendownloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: kwidth,
          title: Text(
            "Downloads",
            style: GoogleFonts.montserrat(
                fontSize: 30, fontWeight: FontWeight.w900),
          ),
          centerTitle: false,
          leadingWidth: 0,
          actions: [
            // Container(
            //   width: 15,
            //   height: 15,
            //   color: Colors.red,
            // ),
            kwidth,
          ],
        ),
        // appBar: const PreferredSize(
        //   preferredSize: Size.fromHeight(50),
        //   child: appbarwidget(
        //     tittle: "Audire",
        //   ),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  kwidth,
                  Icon(
                    Icons.settings,
                    color: KBlackColor,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Smart Downloads")
                ],
              ),
              Text(
                "Downloaded videos can be viewed without internet",
                style: TextStyle(fontSize: 15),
              ),
              MaterialButton(
                color: KButtenColorWhite,
                onPressed: () {},
                child: Text(
                  "See what you can dowload",
                  style: TextStyle(
                      color: KBlackColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ));
  }
}
