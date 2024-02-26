import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appLayout.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Padding(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppLayout.getHeight(40)),
                Text(
                  "What Are\nyou Looking For",
                  style: Styles.headLineStyle1.copyWith(
                    fontSize: AppLayout.getHeight(35),
                  ),
                ),
                Gap(AppLayout.getHeight(20)),
                Container(
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
                            onTap: () => print("Airline Tickets"),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(7)),
                              width: AppLayout.getSize(context).width * 0.42,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  )),
                              child: const Text(
                                "Airline Tickets",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () => print("Hotel Tickets"),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: AppLayout.getHeight(7)),
                              width: AppLayout.getSize(context).width * .42,
                              decoration: const BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                              child: const Text(
                                "Hotel Tickets",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
