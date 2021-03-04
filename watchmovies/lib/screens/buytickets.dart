import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:watchmovies/models/date.dart';
import 'package:watchmovies/models/trends.dart';

class BuyTicket extends StatelessWidget {
  final Trending buytrends;
  final Function press;
  BuyTicket({Key key, this.buytrends, this.press}) : super(key: key);
  final buttonColor = const Color(0xFFFD297A);
  final progressColors = const Color(0XFFFF9347);
  final backGroundColor = const Color(0XFF0D0D0D);
  final buttonColor2 = const Color(0xFFCAD5E2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backGroundColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 34),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context)),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    buytrends.title,
                    style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.only(top: 7),
                  height: 100,
                  width: double.maxFinite,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: content.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                              margin: EdgeInsets.all(8),
                              width: 55,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: content[index].color == 'thedate'
                                    ? Color(0XFFFF9347)
                                    : Colors.white38,
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.black,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      content[index].day,
                                      style: TextStyle(
                                          color:
                                              content[index].color == 'thedate'
                                                  ? Colors.black
                                                  : Colors.white,
                                          fontSize: 11),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      content[index].date,
                                      style: TextStyle(
                                        color: content[index].color == 'thedate'
                                            ? Colors.black
                                            : Colors.white,
                                        fontSize: 21,
                                      ),
                                    )
                                  ],
                                ),
                              )))),
              SizedBox(
                height: 7,
              ),
              Container(
                  height: 53,
                  width: double.maxFinite,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: content.length,
                      itemBuilder: (BuildContext context, int index) =>
                          Container(
                            margin: EdgeInsets.all(8),
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: content[index].color == 'thedate'
                                  ? Color(0XFFFF9347)
                                  : Colors.white38,
                            ),
                            child: Center(
                              child: Text(
                                content[index].time,
                                style: GoogleFonts.lato(
                                  color: content[index].color == 'thedate'
                                      ? Colors.black
                                      : Colors.white,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ))),
              //   Container(
              //   height: 40,
              //   width: double.maxFinite,
              //   child: CustomPaint(
              //  painter: CinemaLine(),
              // ),
              //  )
              SizedBox(
                height: 15,
              ),
              Container(
                height: 2,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    color: Color(0XFFFF9347),
                    borderRadius: BorderRadius.circular(25)),
              ),
              Center(
                  child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Screen',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 19,
                  ),
                ),
              )),
              Container(
                  height: 380,
                  width: double.maxFinite,
                  child: GridView.count(
                    crossAxisCount: 6,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 8.0,
                    children: <Widget>[
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Colors.white70,
                      ),
                      Icon(
                        FlutterIcons.chair_faw5s,
                        color: Color(0XFFFF9347),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Free',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Colors.white70,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Reserved',
                              style: TextStyle(color: Colors.white70),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                color: Color(0XFFFF9347),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Selected',
                              style: TextStyle(
                                color: Color(0XFFFF9347),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 19,
              ),
              Container(
                  margin: EdgeInsets.only(left: 110, top: 2),
                  width: 190,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0XFFFF9347)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                      right: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Buy Ticket',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          '\$44,100',
                          style: GoogleFonts.acme(
                            fontSize: 15,
                            fontWeight: FontWeight.w900,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ));
  }
}

//class CinemaLine extends CustomPainter {
//@override
//void paint(Canvas canvas, Size size) {
// var paint1 = Paint()
//  ..color = Color(0xff63aa65)
//  ..style = PaintingStyle.stroke
//  ..strokeWidth = 5;
//draw arc
// canvas.drawArc(
//  Offset(100, 100) & Size(100, 100),
// 0, //radians
// 2, //radians
///  false,
//  paint1);
//}

//@override
//bool shouldRepaint(CustomPainter oldDelegate) => false;
//}
