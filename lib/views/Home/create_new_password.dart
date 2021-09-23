import 'package:e_study/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Createnewpassword extends StatelessWidget {
  const Createnewpassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 30,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            "Create new password",
            style: GoogleFonts.lexendDeca(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Use strong password            ",
            style: GoogleFonts.lexendDeca(
              fontSize: 15,
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 45,
                    height: 40,
                    child: Icon(
                      Icons.lock_open_outlined,
                      color: primaryColor,
                      size: 22,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    width: 230,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: '●',
                        style: const TextStyle(fontSize: 17),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'New Password',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                  width: 1,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white.withOpacity(0.7),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 45,
                    height: 40,
                    child: Icon(
                      Icons.lock_open_outlined,
                      color: primaryColor,
                      size: 22,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10.0)),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    width: 230,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 7, horizontal: 10),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: '●',
                        style: const TextStyle(fontSize: 17),
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 13)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          SizedBox(
            width: 300,
            height: 50,
            child: MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: primaryColor,
              onPressed: () {},
              child: Text(
                'Done',
                style: GoogleFonts.lexendDeca(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
