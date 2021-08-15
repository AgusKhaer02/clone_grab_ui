import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class OVOMoneyAndPoints extends StatefulWidget {
  const OVOMoneyAndPoints({Key? key}) : super(key: key);

  @override
  _OVOMoneyAndPointsState createState() => _OVOMoneyAndPointsState();
}

class _OVOMoneyAndPointsState extends State<OVOMoneyAndPoints> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
      );
  }
}
