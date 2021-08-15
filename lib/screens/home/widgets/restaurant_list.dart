import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class RestaurantList extends StatefulWidget {
  final List<Map<String, dynamic>> restaurantData;

  const RestaurantList({Key? key, required this.restaurantData})
      : super(key: key);

  @override
  _RestaurantListState createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        itemCount: widget.restaurantData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if(index == 0){
            return RestaurantItem(
              imgResUrl: widget.restaurantData[index]["img_restaurant_url"],
              restaurantName: widget.restaurantData[index]["restaurant_name"],
              distance: widget.restaurantData[index]["distance"],
              avgRating: widget.restaurantData[index]["rating"],
              isPromo: true,
              index: 0,
            );
          }else{
            return RestaurantItem(
              imgResUrl: widget.restaurantData[index]["img_restaurant_url"],
              restaurantName: widget.restaurantData[index]["restaurant_name"],
              distance: widget.restaurantData[index]["distance"],
              avgRating: widget.restaurantData[index]["rating"],
              isPromo: true,
            );
          }
        },
      ),
    );
  }
}

class RestaurantItem extends StatelessWidget {
  final int? index;
  final String imgResUrl;
  final bool isPromo;
  final String restaurantName;
  final double distance;
  final double avgRating;

  const RestaurantItem(
      {Key? key,
      this.isPromo = false,
      required this.distance,
      required this.avgRating,
      required this.imgResUrl,
      required this.restaurantName, this.index})
      : super(key: key);

  Widget promoBadge() {
    if (isPromo) {
      return Positioned(
        top: 5,
        left: 5,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
      );
    }

    return SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: (index == 0 && index != null) ? BoxConstraints(maxWidth: 187) :BoxConstraints(maxWidth: 180),
      child: Container(
        padding: (index == 0 && index != null)? EdgeInsets.only(right: 2,left: 10) : EdgeInsets.only(right: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Image.network(
                    imgResUrl,
                    width: 160,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  promoBadge(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Flexible(
              child: Text(
                restaurantName,
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
                Text(distance.toString() + " km"),
                Text(" . "),
                Icon(
                  LineAwesomeIcons.star_1,
                  size: 13,
                  color: Colors.orange,
                ),
                Text(avgRating.toString()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
