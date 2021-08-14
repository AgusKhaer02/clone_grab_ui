import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grab_ui1/screens/activity/screens/activities.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity>
    with SingleTickerProviderStateMixin {
  int tabIndex = 0;

  TabController? _tabController;

  BoxDecoration setBgTab(int currentIndex) {
    if (tabIndex == currentIndex) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF2F2F2),
      );
    } else {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.transparent,
      );
    }
  }

  TextStyle setColorText(int currentIndex) {
    if (tabIndex  == currentIndex) {
      return TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
      );
    } else {
      return TextStyle(
        color: Colors.black38,
        fontWeight: FontWeight.bold,
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // title, history button
              Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Activity",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    InkWell(
                      onTap: () {
                        print("History");
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                          horizontal: 10,
                        ),
                        child: Text(
                          "History",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),


              //  tabbar
              Container(
                padding: EdgeInsets.only(left: 15),
                width: 200,
                height: 36,
                child: TabBar(
                  onTap: (index){
                    setState(() {
                      tabIndex = index;
                    });
                  },
                  controller: _tabController,
                  labelPadding: EdgeInsets.symmetric(horizontal: 2),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: setBgTab(0),
                        child: Center(
                          child: Text(
                            "Activities",
                            style: setColorText(0),
                          ),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: setBgTab(1),
                        child: Center(
                          child: Text(
                            "Delivery",
                            style: setColorText(1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    Activities(),
                    Center(
                      child: Text("Delivery"),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
