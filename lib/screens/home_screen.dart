import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:kejar_recruitment/constants/colors_const.dart';
// import 'package:kejar_recruitment/constants/styles_const.dart';
// import 'package:kejar_recruitment/models/carousel_model.dart';
// import 'package:kejar_recruitment/models/popular_destination_model.dart';
// import 'package:kejar_recruitment/models/travlog_model.dart';
import 'package:kejar_recruitment/widgets/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Setting up AppBar
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/icons/Wallet.svg'),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add_alert),
              onPressed: () {
                print('alert working');
              })
        ],
      ),

      // Setting up Background Color
      backgroundColor: mBackgroundColor,

      // Setting up Custom Bottom Navigation Bar
      bottomNavigationBar: BottomNavigation(),

      // Body
    );
  }
}
