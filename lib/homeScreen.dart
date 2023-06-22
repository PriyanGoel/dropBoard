import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_college_dashboard/queries.dart';
import 'package:flutter_college_dashboard/viewpages/page/basepage.dart';
import 'package:flutter_college_dashboard/viewpages/page/profile_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_college_dashboard/societies.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // to get size
    var size = MediaQuery.of(context).size;

    // style
    var cardTextStyle = TextStyle(
        fontFamily: "Montserrat Regular",
        fontSize: 14,
        color: Color.fromRGBO(63, 63, 63, 1));

    return ScreenUtilInit(
      builder: (context, child) => Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .3,
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 64,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 32,
                            backgroundImage:
                                NetworkImage('assets/images/png-profile.jpg'),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Yashaswi Garg',
                                style: TextStyle(
                                    fontFamily: "Montserrat Medium",
                                    color: Colors.black,
                                    fontSize: 20),
                              ),
                              Text(
                                '20001003141',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontFamily: "Montserrat Regular"),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        crossAxisCount: 2,
                        children: <Widget>[
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/profile.png',
                                  height: 128,
                                ),
                                Container(
                                    child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProfilePage()));
                                  },
                                  child: Text(
                                    'Personal Data',
                                    style: cardTextStyle,
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/feed.jpeg',
                                  height: 128,
                                ),
                                Container(
                                    child: MaterialButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Basepage()));
                                  },
                                  child: Text(
                                    'Feed',
                                    style: cardTextStyle,
                                  ),
                                ))
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/clubs.png',
                                  height: 128,
                                ),
                                Container(
                                    child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SocietiesPage()));
                                        },
                                        child: Text(
                                          'Societies/Clubs',
                                          style: cardTextStyle,
                                        ))),
                              ],
                            ),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            elevation: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset(
                                  'assets/images/queries.jpeg',
                                  height: 128,
                                ),
                                Container(
                                  child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      MyApp()));
                                        },
                                  child: Text(
                                    'Queries',
                                    style: cardTextStyle,
                                  ),
                                ))
                              ],
                            ),
                          ),
                          // Card(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(8)),
                          //   elevation: 4,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //       SvgPicture.network(
                          //         'https://image.flaticon.com/icons/svg/1904/1904235.svg',
                          //         height: 128,
                          //       ),
                          //       Text(
                          //         'Course Booking',
                          //         style: cardTextStyle,
                          //       )
                          //     ],
                          //   ),
                          // ),
                          // Card(
                          //   shape: RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(8)),
                          //   elevation: 4,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: <Widget>[
                          //       SvgPicture.network(
                          //         'https://image.flaticon.com/icons/svg/1904/1904221.svg',
                          //         height: 128,
                          //       ),
                          //       Text(
                          //         'Course Plan',
                          //         style: cardTextStyle,
                          //       )
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      designSize: const Size(412, 920),
    );
  }
}
