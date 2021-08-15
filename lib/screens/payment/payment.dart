import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // top menus
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/pic-bg-ovocash.png",
                      fit: BoxFit.fill,
                      width: double.infinity,
                      height: 280,
                    ),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Payment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "OVO Cash",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.deepPurple),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Transform.translate(
                                    offset: const Offset(0, -15),
                                    child: Text(
                                      'RP',
                                      //superscript is usually smaller in size
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                TextSpan(
                                  text: '104.000.000',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height:25,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/icons/ic-ovo-point.png",
                                  width: 12,
                                  height: 12,
                                ),
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white,
                                    border: Border.all(
                                      color: Colors.green,
                                      width: 2,
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("127 OVO Points"),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                LineAwesomeIcons.angle_right,
                                size: 14,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.only(top: 20, bottom: 25),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black38,
                                  blurRadius: 1,
                                  spreadRadius: 0.5,
                                )
                              ],
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Icon(
                                            LineAwesomeIcons.mobile_phone,
                                            size: 55,
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            top: 0,
                                            right: 0,
                                            child: Icon(
                                              LineAwesomeIcons.dollar_sign,
                                              color: Colors.green,
                                              size: 15,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            top: 0,
                                            right: 4,
                                            child: Icon(
                                              LineAwesomeIcons.arrow_right,
                                              color: Colors.green,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Pay",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Icon(
                                            LineAwesomeIcons.wallet,
                                            size: 45,
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: Container(
                                              padding: EdgeInsets.all(4),
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                border: Border.all(
                                                    color: Colors.white,
                                                    width: 2),
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                              ),
                                              child: Icon(
                                                LineAwesomeIcons.plus,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Top Up",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                // subscriptions
                Container(
                  margin: EdgeInsets.fromLTRB(20, 50, 0, 15),
                  child: Text(
                    "Subscriptions",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black45),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.only(top: 20, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 1,
                        spreadRadius: 0.5,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 15),
                            child: Image.asset(
                              "assets/icons/ic-subs.png",
                              width: 60,
                              height: 60,
                            ),
                          ),
                          Flexible(
                            child: Container(
                              padding: EdgeInsets.only(right: 25),
                              child: Text(
                                "Choose a subscription plan to save on rides, food, shooping, and more!",
                                style: TextStyle(fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black12,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "View Plans",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      )
                    ],
                  ),
                ),

                // recent activity
                Container(
                  margin: EdgeInsets.fromLTRB(20, 35, 0, 15),
                  child: Text(
                    "Recent Activity",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.black45,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding:
                      EdgeInsets.only(top: 20, bottom: 25, right: 20, left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        blurRadius: 1,
                        spreadRadius: 0.5,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Payment",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "To PT SOLUSI TRANSPORTASI INDONESIA",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black38,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "- IDR 13.400",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                LineAwesomeIcons.angle_right,
                                size: 18,
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
