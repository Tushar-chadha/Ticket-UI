import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/utils.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appLayout.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  final tickeInfo;
  final bool? isColor;
  Color lightGrey = Styles.lightGrey;

  TicketView({super.key, this.tickeInfo, this.isColor});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppLayout.getScreenWidth() * 0.85,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: isColor == null ? Styles.blueColor : Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tickeInfo["from"]["code"],
                        style: Styles.headLineStyle3.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Styles.textColor),
                      ),
                      Text(
                        tickeInfo["from"]["name"],
                        style: Styles.headLineStyle4.copyWith(
                            color: isColor == null ? Colors.white : lightGrey),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_airplane_filled,
                        color:
                            isColor == null ? Colors.white : Styles.textColor,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        tickeInfo["flying_time"],
                        style: Styles.headLineStyle4.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Styles.textColor),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        tickeInfo["to"]["code"],
                        style: Styles.headLineStyle3.copyWith(
                            color: isColor == null
                                ? Colors.white
                                : Styles.textColor),
                      ),
                      Text(
                        tickeInfo["to"]["name"],
                        style: Styles.headLineStyle4.copyWith(
                            color: isColor == null ? Colors.white : lightGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ), //base component
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: isColor == null
                      ? Radius.circular(20)
                      : Radius.circular(0),
                  bottomRight: isColor == null
                      ? Radius.circular(20)
                      : Radius.circular(0),
                ),
                color: isColor == null ? Styles.orangeColor : Colors.white),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? const Color(0XFFeeedf2)
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomRight: Radius.circular(20))),
                      ),
                    ),
                    Center(
                      child: Flex(
                        direction: Axis.horizontal,
                        children: List.generate(
                            20,
                            (index) => Text(
                                  " - ",
                                  style: Styles.headLineStyle4.copyWith(
                                      color: isColor == null
                                          ? Colors.white
                                          : lightGrey),
                                )),
                      ),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(20),
                      width: AppLayout.getWidth(10),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: isColor == null
                                ? const Color(0XFFeeedf2)
                                : Colors.white,
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tickeInfo["date"],
                            style: Styles.headLineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.textColor),
                          ),
                          Text(
                            "Date",
                            style: Styles.headLineStyle4.copyWith(
                                color:
                                    isColor == null ? Colors.white : lightGrey),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            tickeInfo["departure_time"],
                            style: Styles.headLineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.textColor),
                          ),
                          Text(
                            "Departure time",
                            style: Styles.headLineStyle4.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.textColor),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            tickeInfo["number"].toString(),
                            style: Styles.headLineStyle3.copyWith(
                                color: isColor == null
                                    ? Colors.white
                                    : Styles.textColor),
                          ),
                          Text(
                            "Number",
                            style: Styles.headLineStyle4.copyWith(
                                color:
                                    isColor == null ? Colors.white : lightGrey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
