import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
              // ovo money, and points
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        print("ovo money");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xFFEBEBEB), width: 2.5),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(2),
                              child: Image.asset(
                                "assets/images/ovo-logo.png",
                                width: 21,
                                height: 21,
                              ),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.black12, width: 2.5),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(2, -4),
                                      child: Text(
                                        'RP',
                                        //superscript is usually smaller in size
                                        textScaleFactor: 0.7,
                                        style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  TextSpan(
                                    text: '12.000',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              LineAwesomeIcons.angle_right,
                              size: 16,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        print("ovo points");
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.symmetric(
                            horizontal: BorderSide(
                              color: Color(0xFFEBEBEB),
                              width: 2.5,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Image.asset(
                                "assets/icons/ic-ovo-point.png",
                                width: 15,
                                height: 15,
                              ),
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                border: Border.all(
                                    color: Colors.black12, width: 2.5),
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '127',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  TextSpan(
                                    text: ' Points',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Icon(
                              LineAwesomeIcons.angle_right,
                              size: 16,
                              color: Colors.black26,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // topup wallet
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 45,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 3,
                          spreadRadius: 0.5)
                    ],
                  ),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            Icon(LineAwesomeIcons.wallet),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                padding: EdgeInsets.all(0.3),
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  LineAwesomeIcons.plus,
                                  color: Colors.white,
                                  size: 8,
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(
                          "Top Up . Wallet",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              //  main menu
              Center(
                child: Wrap(
                  children: [
                    Column(mainAxisSize: MainAxisSize.min, children: [
                      IconButton(
                        icon: Image.asset("assets/icons/ic-food.png"),
                        onPressed: () {
                          print("Food");
                        },
                        iconSize: 60,
                      ),
                      Text("Food")
                    ]),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-mart.png"),
                          onPressed: () {
                            print("Mart");
                          },
                          iconSize: 60,
                        ),
                        Text("Mart")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-car.png"),
                          onPressed: () {
                            print("Car");
                          },
                          iconSize: 60,
                        ),
                        Text("Car")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-bike.png"),
                          onPressed: () {
                            print("Bike");
                          },
                          iconSize: 60,
                        ),
                        Text("Bike")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-express.png"),
                          onPressed: () {
                            print("Express");
                          },
                          iconSize: 60,
                        ),
                        Text("Express")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-health.png"),
                          onPressed: () {
                            print("Health");
                          },
                          iconSize: 60,
                        ),
                        Text("Health")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-jastip.png"),
                          onPressed: () {
                            print("Jastip");
                          },
                          iconSize: 60,
                        ),
                        Text("Jastip")
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Image.asset("assets/icons/ic-more.png"),
                          onPressed: () {
                            print("More");
                          },
                          iconSize: 60,
                        ),
                        Text("More")
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),
              Divider(
                color: Color(0xFFFAFAFA),
                thickness: 2,
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
                        "https://assets.grab.com/wp-content/uploads/sites/9/2021/03/23205559/feedcard-detail-1.jpg",
                        width: double.infinity,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Promo Gajian Grab, #Bisalah Gajian Awet!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Sponsored by GrabExpress",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.black38),
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
                    Text(
                      "Order food again ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 135),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.network(
                                      "https://misterburger.co.id//assets/uploads/c418c78ff9d369c3f8309f33c5d590e0.jpg?w=632&h=632",
                                      width: 130,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 5,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
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
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Mister Burger - Mitra Travel Seturan",
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
                                  Text("2.6 km"),
                                  Text(" . "),
                                  Icon(
                                    LineAwesomeIcons.star_1,
                                    size: 13,
                                    color: Colors.orange,
                                  ),
                                  Text("4.8"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      "Restaurants you may like ",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87),
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
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 135),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.network(
                                      "https://jogjagoodstuff.com/wp-content/uploads/2021/02/fb22-300x300.png",
                                      width: 130,
                                      height: 110,
                                      fit: BoxFit.cover,
                                    ),
                                    Positioned(
                                      top: 5,
                                      left: 5,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 5, horizontal: 5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
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
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Flexible(
                                child: Text(
                                  "Ayam Geprek Preksu - Gejayan",
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
                                  Text("1.6 km"),
                                  Text(" . "),
                                  Icon(
                                    LineAwesomeIcons.star_1,
                                    size: 13,
                                    color: Colors.orange,
                                  ),
                                  Text("4.8"),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),

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
                height: 200,
                child: GridView.builder(
                  itemCount: 2,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
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
                              "Ayam Geprek Preksu - Gejayan",
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
                              Text("1.6 km"),
                              Text(" . "),
                              Icon(
                                LineAwesomeIcons.star_1,
                                size: 13,
                                color: Colors.orange,
                              ),
                              Text("4.8"),
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
