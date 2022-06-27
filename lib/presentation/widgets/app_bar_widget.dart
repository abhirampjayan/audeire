import 'package:audire_application_1/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class appbarwidget extends StatelessWidget {
  const appbarwidget({
    Key? key,
    required this.tittle,
  }) : super(
          key: key,
        );
  final String tittle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kwidth,
        Text(
          "Downloads",
          style:
              GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w900),
        ),
        Text("Downloads"),
        const Spacer(),
        const Icon(Icons.cast, color: Colors.white, size: 30),
        kwidth,
        Container(
          width: 30,
          height: 30,
          color: Colors.blue,
        ),
        kwidth,
      ],
    );
  }
}
