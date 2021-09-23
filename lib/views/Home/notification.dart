import 'package:e_study/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Notifications           ",
              style: GoogleFonts.lexendDeca(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                width: 280,
                child: Text(
                  "         Stay notified about new course\n          update, scoreboard status and\n          new friend follows",
                  style: GoogleFonts.lexendDeca(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Image.asset('assets/images/notifications.png'),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              width: 280,
              height: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 12,
                    offset: const Offset(0, 7),
                  ),
                ],
              ),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: primaryColor,
                onPressed: () {},
                child: Text(
                  'Allow',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Skip',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
