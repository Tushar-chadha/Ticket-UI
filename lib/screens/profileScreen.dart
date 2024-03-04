import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appLayout.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: AppLayout.getHeight(20),
            horizontal: AppLayout.getWidth(20),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(),
            children: [
              Gap(
                AppLayout.getHeight(10),
              ),
              //Header Start
              Container(
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 85,
                          height: 90,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(AppLayout.getHeight(20))),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/img_1.png"),
                            ),
                          ),
                        ),
                        // ^ Image Container ^
                        Gap(
                          AppLayout.getHeight(10),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Book Tickets",
                              style: Styles.headLineStyle1,
                            ),
                            Text(
                              "New-York",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 4),
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                      backgroundColor: Styles.blueColor,
                                      radius: AppLayout.getWidth(10),
                                      child: Icon(
                                        FluentSystemIcons
                                            .ic_fluent_shield_filled,
                                        size: AppLayout.getHeight(15),
                                        color: Colors.white,
                                      )),
                                  Gap(AppLayout.getWidth(5)),
                                  Text(
                                    "Premium Status",
                                    style: Styles.headLineStyle4.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Styles.blueColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getWidth(40),
                    ),
                    Column(
                      children: [
                        Gap(AppLayout.getWidth(5)),
                        Text("Edit", style: Styles.headLineStyle4),
                      ],
                    ),
                  ],
                ),
              ),
              // ^Header End^

              Gap(AppLayout.getHeight(20)),
              // Achivement Box Start
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(AppLayout.getHeight(20))),
                      color: Styles.blueColor),
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 40,
                        right: -50,
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 20,
                                color: Colors.blue.shade900,
                              ),
                              shape: BoxShape.circle),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 26,
                              backgroundColor: Colors.white,
                              child: Icon(
                                FluentSystemIcons.ic_fluent_trophy_filled,
                                color: Styles.blueColor,
                                size: 32,
                              ),
                            ),
                            Gap(5),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "You've got a new award",
                                  style: Styles.headLineStyle2
                                      .copyWith(color: Colors.white),
                                ),
                                Text(
                                  "You have 150 flights in a year",
                                  style: Styles.headLineStyle3
                                      .copyWith(color: Colors.white),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ^ Achivement Box end ^
              Gap(AppLayout.getHeight(10)),
              // Data Start
              Text(
                "Accumulated Miles",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              Center(
                child: Text(
                  "192802",
                  style: Styles.headLineStyle1.copyWith(fontSize: 50),
                ),
              ),
              // Data Table Start
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                child: Column(
                  children: [
                    Gap(AppLayout.getHeight(30)),
                    Container(), // add header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "23 042",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Miles",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Airlines CO",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Recieved From",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "24",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Miles",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "McDonal's",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Recieved From",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(30)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "52 430",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Miles",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Exuma",
                              style: Styles.headLineStyle3
                                  .copyWith(color: Styles.textColor),
                            ),
                            Text(
                              "Recived From",
                              style: Styles.headLineStyle4
                                  .copyWith(color: Styles.lightGrey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // ^ End Data Text^
              Gap(20),
              Center(
                child: Text(
                  "How To Get More Miles",
                  style: Styles.headLineStyle3,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
