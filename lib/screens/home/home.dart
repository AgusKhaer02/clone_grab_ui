import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:grab_ui1/data_dummy/food_data.dart';
import 'package:grab_ui1/data_dummy/restaurant_data.dart';
import 'package:grab_ui1/screens/home/widgets/btn_main_menus.dart';
import 'package:grab_ui1/screens/home/widgets/btn_topup_wallet_ovo.dart';
import 'package:grab_ui1/screens/home/widgets/food_list.dart';
import 'package:grab_ui1/screens/home/widgets/grab_sponsor.dart';
import 'package:grab_ui1/screens/home/widgets/ovo_money_points.dart';
import 'package:grab_ui1/screens/home/widgets/restaurant_list.dart';
import 'package:grab_ui1/screens/home/widgets/section_title.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF33C072),
        flexibleSpace: SafeArea(
          child: Container(
            margin: EdgeInsets.fromLTRB(15, 20, 15, 15),
            padding: EdgeInsets.fromLTRB(0, 0, 2, 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: TextField(
              maxLines: 1,
              textAlignVertical: TextAlignVertical.center,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                hintText: "Search Here...",
                prefixIcon: Icon(
                  LineAwesomeIcons.qrcode,
                  color: Colors.black45,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OVOMoneyAndPoints(),
              BtnTopUpWalletOVO(),
              BtnMainMenus(),
              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xFFFAFAFA),
                thickness: 2,
              ),
              GrabSponsor(
                imgSponsor:
                    "https://assets.grab.com/wp-content/uploads/sites/9/2021/07/29153813/Header-GRAB-Diskon150.jpg",
                titleSponsor:
                    "Bersatu Merdeka Nikmati Diskon 150% Khusus Pengguna Baru ✊",
                sponsoredBy: "GrabFood",
              ),
              SizedBox(
                height: 30,
              ),
              SectionTitle(title: "Order food again"),
              SizedBox(
                height: 15,
              ),
              FoodList(foodData: FoodData.mapFoodOrderAgain),
              SizedBox(
                height: 15,
              ),
              SectionTitle(title: "Restaurants you may like"),
              SizedBox(
                height: 15,
              ),
              RestaurantList(restaurantData: RestaurantData.mapRestaurant),

              SizedBox(
                height: 5,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        "https://www.grab.com/id/wp-content/uploads/sites/9/2017/08/GrabPay-72-Bonus-Merdeka_landing-page-1950x700.jpg",
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Merdeka Dari Tunai dengan Extra 72%!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Sponsored by GrabPay",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black38,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Makan dan Belanja pakai promo yuk ",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFEBEBEB),
                      ),
                      child: Icon(
                        LineAwesomeIcons.arrow_right,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 220,
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.5,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://storage.googleapis.com/promozi/image/richeese_factory_175013050_121224123397460_5278734928746932010_n-300x300.jpg",
                                  width: double.infinity,
                                  height: 140,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                top: 5,
                                left: 5,
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 5),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.black,
                                  ),
                                  child: Text(
                                    "Promo",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: Text(
                              "Serbu diskon kilat BERSATU Sekarang",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                LineAwesomeIcons.calendar_1,
                                size: 13,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Until 17 Aug"),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Flexible(
                      child: Text(
                        "Offers you may like ",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Color(0xFFEBEBEB),
                      ),
                      child: Icon(
                        LineAwesomeIcons.arrow_right,
                        size: 15,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 100,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Color(0xFFEBEBEB),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("GF5MCD 50%"),
                              Text("GrabFood"),
                            ],
                          ),
                          Image.asset(
                            "assets/icons/ic-grab-food-promo.png",
                            width: 100,
                            height: 100,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
