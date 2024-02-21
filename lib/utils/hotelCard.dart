import 'package:flutter/material.dart';
import 'package:ticketticker/utils/appConstants.dart';

class HotelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Styles.blueColor,
          borderRadius: const BorderRadius.all(Radius.circular(20))),
    );
  }
}
