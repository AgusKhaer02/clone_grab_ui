import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class BtnTopUpWalletOVO extends StatefulWidget {
  const BtnTopUpWalletOVO({Key? key}) : super(key: key);

  @override
  _BtnTopUpWalletOVOState createState() => _BtnTopUpWalletOVOState();
}

class _BtnTopUpWalletOVOState extends State<BtnTopUpWalletOVO> {
  @override
  Widget build(BuildContext context) {
    return // topup wallet
        GestureDetector(
      onTap: () {
        print("topup wallet ovo");
      },
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
              spreadRadius: 0.5,
            )
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
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
