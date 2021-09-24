import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:e_study/utils/constants.dart';

final List<String> imglist = [
  'assets/images/1s.png',
  'assets/images/2s.png',
  'assets/images/3s.png',
];
final List<String> textlist = [
  'Eric widget',
  'Assrt widget',
  'Geyr widget',
];

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final double expanded_height = 300;
  final double rounded_container_height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Stack(
            children: <Widget>[
              CustomScrollView(
                slivers: <Widget>[
                  _buildSliverHead(),
                  SliverToBoxAdapter(
                    child: _buildDetail(),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top,
                ),
                child: SizedBox(
                  height: kToolbarHeight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSliverHead() {
    return SliverPersistentHeader(
      delegate: DetailSliverDelegate(
        expanded_height,
        rounded_container_height,
      ),
    );
  }

  Widget _buildDetail() {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _buildUserInfo(),
          const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 30,
            ),
            child: ReadMoreText(
              "Graphic design now a popular profession Learn graphic design"
              "by our course and find the solution off your career about learning "
              "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
              "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
              "The balearic Lsnaled,Lsnaled,The balea The balearic Lsnaled,"
              "The balearic Lsnaled,The balearic Lsnaled,The balea Lsnaled,"
              "The balearic Lsnaled,The balearic Lsnaled,",
              trimLines: 4,
              colorClickableText: Color(0xff4dc591),
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Learn more',
              trimExpandedText: 'Show less',
              moreStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Color(0xff4dc591),
              ),
              style: TextStyle(
                color: Colors.black87,
                height: 1.4,
                fontSize: 14,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "What you'll get",
              style: GoogleFonts.lexendDeca(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.auto_stories_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "25 Lesson",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.screen_rotation_outlined,
                      size: 18,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Access on mobile, desktop & TV",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.signal_cellular_alt_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Beginner Level",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.headphones_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Audio book",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.emoji_nature_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "LifeTime Acess",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.quiz_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "100 Quizzes",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.badge_outlined,
                      size: 20,
                      color: Colors.grey.shade700,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Certificate of Completion",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 30,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Curriculum",
                  style: GoogleFonts.lexendDeca(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "See more",
                  style: GoogleFonts.lexendDeca(
                    fontSize: 12,
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Curriculum_widget(
            no: '01',
            title: 'Introduction',
            subtitle: '1:48             ',
            width: 40,
          ),
          SizedBox(
            height: 10,
          ),
          Curriculum_widget(
            no: '02',
            title: 'Getting started',
            subtitle: '1:48                  ',
            width: 15,
          ),
          SizedBox(
            height: 10,
          ),
          Curriculum_widget(
            no: '03',
            title: 'Layers panel',
            subtitle: '1:48             ',
            width: 36,
          ),
          SizedBox(
            height: 10,
          ),
          Curriculum_widget(
            no: '04',
            title: 'Pen Tool',
            subtitle: '1:48     ',
            width: 73,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Instructor',
              style: GoogleFonts.lexendDeca(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1491349174775-aaafddd81942?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                        fit: BoxFit.cover,
                      )),
                  width: 55,
                  height: 55,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Ferrero",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "  Professor",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lexendDeca(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.deepPurpleAccent,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blue.withOpacity(0.6),
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.green.shade800,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green.shade700,
                      size: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80"),
                        fit: BoxFit.cover,
                      )),
                  width: 55,
                  height: 55,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Albert",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "  Professor",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lexendDeca(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 70,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blue,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.facebookF,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.deepPurpleAccent,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.twitter,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.blue.withOpacity(0.6),
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.linkedinIn,
                      size: 10,
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100.withOpacity(0.2),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(50.0)),
                      border: Border.all(
                        color: Colors.green.shade800,
                        width: 1,
                      )),
                  child: Center(
                    child: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green.shade700,
                      size: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, bottom: 10),
            child: Text(
              'FAQ',
              style: GoogleFonts.lexendDeca(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Faqquestions(
            text: 'can i enroll a single class?',
          ),
          Faqquestions(
            text: 'what is refund policy?',
          ),
          Faqquestions(
            text: 'Is Financial aid available?',
          ),
          Faqquestions(
            text: 'What tools or material do i need?',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, bottom: 10),
            child: Text(
              'Reviews',
              style: GoogleFonts.lexendDeca(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '4.8',
                style: GoogleFonts.lexendDeca(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 10),
              Text(
                'based on 50 reviews',
                style: GoogleFonts.lexendDeca(
                  fontSize: 13,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '57%',
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 10,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    width: 90,
                    height: 10,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '26%',
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 10,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    width: 75,
                    height: 10,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '12%',
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 10,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    width: 33,
                    height: 10,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '03%',
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 10,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    width: 15,
                    height: 10,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '02%',
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              Icon(
                Icons.star,
                color: Colors.grey.withOpacity(0.5),
                size: 15,
              ),
              SizedBox(
                width: 20,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 10,
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    color: Colors.grey.withOpacity(0.9),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Student feedback',
                    style: GoogleFonts.lexendDeca(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  width: 60,
                ),
                Text(
                  "See more",
                  style: GoogleFonts.lexendDeca(
                    fontSize: 15,
                    color: secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imglist.length,
                itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(0.0)),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.6),
                          width: 1,
                        )),
                    margin: const EdgeInsets.all(10),
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 180,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(imglist[index]),
                                        fit: BoxFit.cover,
                                      )),
                                  width: 45,
                                  height: 45,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      textlist[index],
                                      style: GoogleFonts.lexendDeca(
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "4.5",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.lexendDeca(
                                            fontSize: 14,
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          "⭐      ",
                                          textAlign: TextAlign.left,
                                          style: GoogleFonts.lexendDeca(
                                            fontSize: 11,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 180,
                              child: Text(
                                "High clarity and simplification of each concept.",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lexendDeca(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
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
                  'Start Now',
                  style: GoogleFonts.lexendDeca(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Digital Marketing',
                      style: GoogleFonts.lexendDeca(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Offered By: Cordon",
                      style: GoogleFonts.lexendDeca(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 10,
              ),
              Text(
                "4.8",
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.slow_motion_video_outlined,
                color: Colors.black,
                size: 12,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "20 Class",
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.query_builder_outlined,
                color: Colors.black,
                size: 12,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                "40Hours",
                style: GoogleFonts.lexendDeca(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                width: 48,
              ),
              Text(
                "\$120",
                style: GoogleFonts.lexendDeca(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Faqquestions extends StatefulWidget {
  final String? text;
  const Faqquestions({
    this.text,
    Key? key,
  }) : super(key: key);

  @override
  State<Faqquestions> createState() => _FaqquestionsState();
}

class _FaqquestionsState extends State<Faqquestions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 5),
          child: Container(
            width: 250,
            child: Text(
              widget.text!,
              style: GoogleFonts.lexendDeca(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Container(
          width: 15,
          height: 15,
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          ),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.plus,
              size: 10,
            ),
          ),
        ),
      ],
    );
  }
}

class Curriculum_widget extends StatefulWidget {
  final String? no;
  final String? title;
  final String? subtitle;
  final double? width;
  const Curriculum_widget({
    Key? key,
    this.no,
    this.title,
    this.subtitle,
    this.width,
  }) : super(key: key);

  @override
  State<Curriculum_widget> createState() => _Curriculum_widgetState();
}

class _Curriculum_widgetState extends State<Curriculum_widget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue.shade100.withOpacity(0.2),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(
              color: Colors.blue.shade100.withOpacity(0.2),
              width: 1,
            )),
        height: 55,
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.no!,
              style: GoogleFonts.lexendDeca(
                fontSize: 27,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title!,
                  style: GoogleFonts.lexendDeca(
                    fontSize: 18,
                    color: secondaryColor,
                  ),
                ),
                Text(
                  widget.subtitle!,
                  style: GoogleFonts.lexendDeca(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: widget.width,
            ),
            Icon(
              Icons.play_circle_outline_outlined,
              size: 40,
              color: secondaryColor,
            ),
          ],
        ),
      ),
    );
  }
}

class FeaturedWidget extends StatelessWidget {
  List<TravelBean> _list = TravelBean.generateMostPopularBean();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          height: 100,
          width: 120,
          margin: EdgeInsets.only(
            right: 15,
          ),
          child: Image.asset(
            _list[index].url,
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: _list.length,
    );
  }
}

class DetailSliverDelegate extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  // final TravelBean bean;
  final double rounded_container_height;

  DetailSliverDelegate(this.expandedHeight, this.rounded_container_height);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: Colors.white,
            child: Image.asset(
              'assets/images/notifications.png',
              width: MediaQuery.of(context).size.width,
              height: expandedHeight,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => 0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class TravelBean {
  String name;
  String location;
  String url;

  TravelBean(this.name, this.location, this.url);

  static List<TravelBean> generateTravelBean() {
    return [
      TravelBean("Peach", "Spain ES1", "assets/images/top1.jpg"),
      TravelBean("Grassland", "Spain ES2", "assets/images/top2.jpg"),
      TravelBean("Starry sky", "Spain ES3", "assets/images/top3.jpg"),
      TravelBean("Beauty Pic", "Spain ES4", "assets/images/top4.jpg"),
    ];
  }

  static List<TravelBean> generateMostPopularBean() {
    return [
      TravelBean("Peach", "Spain ES", "assets/images/1s.png"),
      TravelBean("Grassland", "Spain ES", "assets/images/2s.png"),
      TravelBean("Starry sky", "Spain ES", "assets/images/3s.png"),
      TravelBean("Beauty Pic", "Spain ES", "assets/images/3s.png"),
    ];
  }
}
