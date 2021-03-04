import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchmovies/models/nowincinemas.dart';
import 'package:watchmovies/models/trends.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/TabItem.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:watchmovies/screens/detailspage.dart';
import 'dart:math' as math;

class MyHomePage extends StatefulWidget {
  final String trending;

  MyHomePage({Key key, this.trending}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final buttonColor = const Color(0xFFFD297A);
  final progressColors = const Color(0XFFFF9347);
  final backGroundColor = const Color(0XFF0D0D0D);
  final buttonColor2 = const Color(0xFFCAD5E2);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10, top: 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        FlutterIcons.list_fou,
                        size: 30,
                        color: buttonColor2,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                              FlutterIcons.search_fea,
                              size: 30,
                              color: buttonColor2,
                            ),
                            onPressed: () {},
                          ),
                          Stack(
                            children: [
                              Transform.rotate(
                                  angle: 20 * math.pi / 180,
                                  child: IconButton(
                                    icon: Icon(
                                      FlutterIcons.notifications_mdi,
                                      size: 30,
                                      color: buttonColor2,
                                    ),
                                    onPressed: () {},
                                  )),
                              Positioned(
                                left: 25,
                                top: 17,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0XFFFF9347)),
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: 42,
                            width: 42,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          'assets/images/pixabay.jpg')),
                                  color: buttonColor2,
                                  shape: BoxShape.circle),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                        ),
                      )
                    ],
                  )),
              Container(
                height: 280,
                width: screenWidth,
                child: SizedBox(
                  height: 50,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: trending.length,
                      itemBuilder: (BuildContext context, int index) =>
                          GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage(
                                            trends: trending[index],
                                          ))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    height: 200,
                                    width: 290,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.3),
                                              BlendMode.darken),
                                          fit: BoxFit.cover,
                                          image:
                                              AssetImage(trending[index].img)),
                                    ),
                                    child: Center(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white54,
                                        ),
                                        child: Icon(
                                          FlutterIcons.play_arrow_mdi,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding:
                                          EdgeInsets.only(left: 13, top: 2),
                                      child: Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              trending[index].title,
                                              style: GoogleFonts.lato(
                                                color: buttonColor2,
                                                fontSize: 17,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ],
                              ))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 19,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Now In Cinemas',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                        ),
                      )
                    ],
                  )),
              Container(
                height: 330,
                width: screenWidth,
                child: SizedBox(
                    height: 50,
                    child: Container(
                        child: ListView.builder(
                            //  physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: cinemas.length,
                            itemBuilder: (BuildContext context, int index) =>
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(10),
                                        height: 240,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  cinemas[index].img)),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        cinemas[index].title,
                                        style: GoogleFonts.lato(
                                          color: buttonColor2,
                                          fontSize: 17,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(left: 6, top: 5),
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: 5,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 11,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        )),
                                  ],
                                )))),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11,
                    vertical: 13,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Coming Soon',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        'View all',
                        style: GoogleFonts.aclonica(
                          color: buttonColor2,
                        ),
                      )
                    ],
                  )),
              Container(
                height: 250,
                width: screenWidth,
                child: SizedBox(
                    height: 50,
                    child: ListView.builder(
                        //  physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: trending.length,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                                margin: EdgeInsets.all(10),
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(trending[index].img)),
                                )))),
              ),
            ],
          ),
        ),
        bottomNavigationBar: MotionTabBar(
          labels: [
            "Home",
            "Tickets",
            "Settings",
          ],
          initialSelectedTab: "Home",
          tabIconColor: Colors.black,
          tabSelectedColor: Color(0XFFFF9347),
          onTabItemSelected: (int value) {
            print(value);
            setState(() {});
          },
          icons: [
            FlutterIcons.home_ant,
            FlutterIcons.ticket_faw,
            Icons.settings,
          ],
          textStyle: GoogleFonts.lato(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
