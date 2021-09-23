import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_study/views/Search/search.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:e_study/utils/constants.dart';
import 'package:e_study/utils/db_icons.dart';
import 'package:e_study/views/Home/notification.dart';

final List<String> imglist = [
  'assets/images/1s.png',
  'assets/images/2s.png',
  'assets/images/3s.png',
];
final List<String> imgslist = [
  'assets/images/4s.png',
  'assets/images/5s.png',
  'assets/images/4ss.png',
];
final List<String> textlist = [
  'Art & Humanities',
  'Business',
  'Health',
  'Art & Humanities',
  'Health',
];

class HomeView extends StatelessWidget {
  // const HomeView({Key? key}) : super(key: key);
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  width: 310,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 45,
                        height: 40,
                        child: Icon(
                          MyFlutterApp.search_2,
                          color: primaryColor,
                          size: 22,
                        ),
                      ),
                      SizedBox(
                        width: 220,
                        height: 40,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Here',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(25.0),
                        bottomRight: Radius.circular(25.0)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Hello john",
                              style: GoogleFonts.lexendDeca(
                                fontSize: 26,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Stack(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Notifications()),
                                    );
                                  },
                                  icon: const Icon(Icons.notifications_rounded),
                                ),
                                const Positioned(
                                  left: 26,
                                  top: 20,
                                  child: Icon(
                                    Icons.brightness_1,
                                    color: Colors.red,
                                    size: 8,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              "Find a source you want to learn",
                              style: GoogleFonts.lexendDeca(
                                fontSize: 15,
                                color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Search()),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10.0)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          width: 310,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 45,
                                height: 40,
                                child: Icon(
                                  MyFlutterApp.search_2,
                                  color: primaryColor,
                                  size: 22,
                                ),
                              ),
                              const SizedBox(
                                width: 220,
                                height: 40,
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text('Search Here',
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 15)),
                                ),
                                // TextFormField(
                                //   decoration: const InputDecoration(
                                //       border: InputBorder.none,
                                //       hintText: 'Search Here',
                                //       hintStyle: TextStyle(
                                //           color: Colors.grey, fontSize: 15)),
                                // ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Categories",
                            style: GoogleFonts.lexendDeca(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "See all",
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SizedBox(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: textlist.length,
                          itemBuilder: (context, index) => Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(5.0)),
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.6),
                                    width: 1,
                                  )),
                              margin: const EdgeInsets.all(10),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Center(
                                  child: Text(textlist[index]),
                                ),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Degree",
                            style: GoogleFonts.lexendDeca(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "See all",
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imgslist.length,
                          itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.all(10),
                              child: Center(
                                child: Container(
                                    child: Image.asset(imgslist[index])),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Courses",
                            style: GoogleFonts.lexendDeca(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "See all",
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imglist.length,
                          itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.all(10),
                              child: Center(
                                child: Container(
                                    child: Image.asset(imglist[index])),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Rated Courses",
                            style: GoogleFonts.lexendDeca(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "See all",
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: SizedBox(
                        height: 170,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: imglist.length,
                          itemBuilder: (context, index) => Container(
                              margin: const EdgeInsets.all(10),
                              child: Center(
                                child: Container(
                                    child: Image.asset(imglist[index])),
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
