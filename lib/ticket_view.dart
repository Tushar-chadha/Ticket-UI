import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';

class TicketView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.width);
    return SizedBox(
      width: MediaQuery.of(context).size.width *0.85,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "NYC",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                        const Spacer(),
                        const Icon(
                          FluentSystemIcons.ic_fluent_airplane_filled,
                          color: Colors.white,
                        ),
                        const Spacer(),
                        Text(
                          "LDN",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    const Gap(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "New-York",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "8H 30M",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "London",
                          style: Styles.headLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ), //base component
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Styles.orangeColor),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0XFFeeedf2),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10))),
                        ),
                      ),
                      Flex(
                        direction: Axis.horizontal,
                        children: List.generate(
                            20,
                            (index) => Text(
                                  " - ",
                                  style: Styles.headLineStyle4
                                      .copyWith(color: Colors.white),
                                )),
                      ),
                      const SizedBox(
                        height: 20,
                        width: 10,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: Color(0XFFeeedf2),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10))),
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
                              "1 MAY",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Date",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "08:00 AM",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Departure time",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "23",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Number",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
