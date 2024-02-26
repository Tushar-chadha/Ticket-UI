import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appLayout.dart';

class HotelCard extends StatelessWidget {
  final Map<String, dynamic> hotelInfo;

  const HotelCard({super.key, required this.hotelInfo});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 17, top: 5),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      decoration: BoxDecoration(
          color: Styles.blueColor,
          borderRadius: BorderRadius.all(Radius.circular(24))),
      width: AppLayout.getScreenWidth() * 0.6,
      height: 360,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              color: Styles.blueColor,
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              image: DecorationImage(
                image: AssetImage("assets/images/${hotelInfo["image"]}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotelInfo["place"],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(AppLayout.getHeight(5)),
          Text(hotelInfo["destination"],
              style: Styles.headLineStyle3.copyWith(color: Colors.white)),
          Gap(AppLayout.getHeight(8)),
          Text("Rs.${hotelInfo["price"]}/ Per Night",
              style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor))
        ],
      ),
    );
  }
}
