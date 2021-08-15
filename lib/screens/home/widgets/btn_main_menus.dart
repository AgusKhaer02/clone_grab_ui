import 'package:flutter/material.dart';

class BtnMainMenus extends StatefulWidget {
  const BtnMainMenus({Key? key}) : super(key: key);

  @override
  _BtnMainMenusState createState() => _BtnMainMenusState();
}

class _BtnMainMenusState extends State<BtnMainMenus> {
  @override
  Widget build(BuildContext context) {
    return //  main menu
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
    );
  }
}
