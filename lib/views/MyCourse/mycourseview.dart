import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCourseView extends StatelessWidget {
  const MyCourseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "My Course",
                style: GoogleFonts.lexendDeca(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
