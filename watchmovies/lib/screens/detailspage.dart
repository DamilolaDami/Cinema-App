import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:watchmovies/models/trends.dart';
import 'package:watchmovies/screens/buytickets.dart';

import 'package:watchmovies/screens/homescreen.dart';

class DetailsPage extends StatelessWidget {
  final Trending trends;
  final Function press;
  DetailsPage({Key key, this.trends, this.press}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        // child:,
        body: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView(
              children: [
                Column(
                  children: [
                    SafeArea(
                      child: Container(
                        width: double.maxFinite,
                        height: 400,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                colorFilter: new ColorFilter.mode(
                                    Colors.black.withOpacity(0.7),
                                    BlendMode.darken),
                                fit: BoxFit.cover,
                                image: AssetImage(trends.img))),
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 30),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.white,
                                      ),
                                      onPressed: () =>
                                          Get.to(() => MyHomePage()),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        FlutterIcons.settings_fea,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 120,
                            ),
                            Center(
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
                            Column(
                              children: [
                                Text(
                                  trends.title,
                                  style: GoogleFonts.lato(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: RatingBar.builder(
                                      itemSize: 17,
                                      initialRating: 5,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                          EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        FlutterIcons.star_faw,
                                        color: Colors.amber,
                                        size: 11,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    )),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 90, right: 30, top: 12),
                                    child: Row(
                                      children: [
                                        Text(
                                          '2020',
                                          style: GoogleFonts.lato(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '1HR 04 min 28 sec',
                                          style: GoogleFonts.lato(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          height: 16,
                                          width: 2,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'Action, Sci-Fi',
                                          style: GoogleFonts.lato(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: screenHeight,
                      width: screenWidth,
                      color: Colors.black,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Column(children: [
                                Text(
                                  'Storyline',
                                  style: GoogleFonts.lato(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  trends.description,
                                  style: GoogleFonts.lato(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 100,
                                ),
                                Container(
                                    padding: EdgeInsets.only(left: 65),
                                    height: 55,
                                    width: screenWidth,
                                    child: SizedBox(
                                        height: 50,
                                        child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 1,
                                            itemBuilder: (BuildContext context,
                                                    int index) =>
                                                GestureDetector(
                                                  onTap: () => Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              BuyTicket(
                                                                buytrends:
                                                                    trending[
                                                                        index],
                                                              ))),
                                                  child: Container(
                                                      margin: EdgeInsets.only(
                                                        left: 30,
                                                        top: 0,
                                                      ),
                                                      width: 190,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(17),
                                                          color: Color(
                                                              0XFFFF9347)),
                                                      child: Center(
                                                        child: Text(
                                                          'Buy Ticket',
                                                          style:
                                                              GoogleFonts.acme(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                      )),
                                                ))))
                              ])),
                        ],
                      ),
                    )
                  ],
                )
              ],
            )));
  }
}
