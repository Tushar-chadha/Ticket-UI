import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ticketticker/utils/appLayout.dart';

class customToggleButton extends StatefulWidget {
  final String firstLabel, secondLabel;

  const customToggleButton(
      {super.key, required this.firstLabel, required this.secondLabel});
  @override
  State<customToggleButton> createState() => _customToggleButtonState();
}

class _customToggleButtonState extends State<customToggleButton> {
  Color airlineColor = Colors.white;
  Color hotelColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(50),
            ),
            color: const Color(0xFFF4F6FD)), // BoxDecoration
        child: Padding(
          padding: const EdgeInsets.all(3.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    airlineColor = Colors.white;
                    hotelColor = Colors.transparent;
                  });
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: AppLayout.getSize(context).width * 0.41,
                  decoration: BoxDecoration(
                      color: airlineColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50),
                      )),
                  child: Text(
                    widget.firstLabel,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    hotelColor = Colors.white;
                    airlineColor = Colors.transparent;
                  });
                },
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                  width: AppLayout.getSize(context).width * .41,
                  decoration: BoxDecoration(
                    color: hotelColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Text(
                    widget.secondLabel,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
