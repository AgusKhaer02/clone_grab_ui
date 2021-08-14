import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_ui1/screens/account/account.dart';
import 'package:grab_ui1/screens/activity/activity.dart';
import 'package:grab_ui1/screens/home/home.dart';
import 'package:grab_ui1/screens/messages/messages.dart';
import 'package:grab_ui1/screens/payment/payment.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: TabBarView(
            children: [
              Home(),
              Activity(),
              Payment(),
              Messages(),
              Account(),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black45,blurRadius: 2,spreadRadius: 0)
            ],
            color: Colors.white
          ),
          child: TabBar(
            labelColor: Color(0xFF00843B),
            indicatorColor: Colors.transparent,
            labelPadding: EdgeInsets.all(0.5),
            indicatorWeight: 1,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold
            ),
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w400
            ),
            unselectedLabelColor: Colors.black45,
            tabs: [
              Tab(
                icon: Icon(LineAwesomeIcons.compass),
                iconMargin: EdgeInsets.only(bottom: 5),
                text: "Home",
              ),
              Tab(
                icon: Icon(LineAwesomeIcons.newspaper),
                iconMargin: EdgeInsets.only(bottom: 5),
                text: "Activity",
              ),
              Tab(
                icon: Icon(LineAwesomeIcons.wallet),
                iconMargin: EdgeInsets.only(bottom: 5),
                text: "Payment",
              ),
              Tab(
                icon: Icon(LineAwesomeIcons.comment_dots),
                iconMargin: EdgeInsets.only(bottom: 5),
                text: "Messages",
              ),
              Tab(
                icon: Icon(LineAwesomeIcons.user_circle),
                iconMargin: EdgeInsets.only(bottom: 5),
                text: "Account",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
