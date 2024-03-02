import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appLayout.dart';
import 'package:ticketticker/utils/containerBox.dart';
import 'package:ticketticker/utils/cutomToggleButton.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Widget iconText(IconData iconName, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
      child: Row(
        children: [
          Icon(
            iconName,
            size: 25,
            color: Styles.blueColor.withAlpha(100),
          ),
          Gap(AppLayout.getWidth(15)),
          Text(
            text,
            style: Styles.headLineStyle3
                .copyWith(fontWeight: FontWeight.w600, color: Styles.textColor),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          Padding(
            padding: EdgeInsets.all(AppLayout.getHeight(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(AppLayout.getHeight(50)),
                Text(
                  "What Are\nyou Looking For",
                  style: Styles.headLineStyle1.copyWith(
                    fontSize: AppLayout.getHeight(35),
                  ),
                  textAlign: TextAlign.justify,
                ),
                Column(
                  children: [
                    Gap(AppLayout.getHeight(20)),
                    const customToggleButton(
                        firstLabel: "Airline Tickets",
                        secondLabel: "Hotel Tickets"),
                    Gap(
                      AppLayout.getHeight(30),
                    ),
                    ContainerBox(
                        addWidget: iconText(Icons.flight_takeoff, "Departure")),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    ContainerBox(
                        addWidget: iconText(Icons.flight_land, "Arrival")),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    ContainerBox(
                      boxColor: const Color(0xFF314CD3),
                      addWidget: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          "Find Tickets",
                          style: Styles.headLineStyle3
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Upcoming Flights",
                          style: Styles.headLineStyle2,
                        ),
                        InkWell(
                          onTap: () => print("search page view All"),
                          child: Text(
                            "view all",
                            style: Styles.headLineStyle3,
                          ),
                        )
                      ],
                    ),
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          width: AppLayout.getSize(context).width * 0.42,
                          height: AppLayout.getHeight(400),
                          padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(20),
                            horizontal: AppLayout.getWidth(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: AppLayout.getHeight(190),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/images/sit.jpg"),
                                  ),
                                ),
                              ),
                              Text(
                                "20% discount on the earlybooking of this flight. Don't miss.",
                                style: Styles.headLineStyle2,
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: AppLayout.getSize(context).width * 0.42,
                          height: AppLayout.getHeight(400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: double.infinity,
                                height: AppLayout.getHeight(190),
                                decoration: const BoxDecoration(
                                  color: Color(0xFF39b8b8),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(
                                          AppLayout.getHeight(12)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Discount\nFor survey",
                                            style: Styles.headLineStyle2
                                                .copyWith(color: Colors.white),
                                          ),
                                          Gap(AppLayout.getHeight(10)),
                                          Text(
                                            "Take the survey about our services and get a discount.",
                                            style: Styles.headLineStyle3
                                                .copyWith(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Positioned(
                                      top: -40,
                                      right: -40,
                                      child: Container(
                                        padding: EdgeInsets.all(
                                            AppLayout.getHeight(30)),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 18,
                                                color:
                                                    const Color(0xFF189999))),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                padding:
                                    EdgeInsets.all(AppLayout.getHeight(10)),
                                height: AppLayout.getHeight(200),
                                decoration: const BoxDecoration(
                                  color: Color(0xFFec6645),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(15),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      "Take Love",
                                      style: Styles.headLineStyle1
                                          .copyWith(color: Colors.white),
                                    ),
                                    Gap(AppLayout.getHeight(5)),
                                    RichText(
                                        text: TextSpan(children: [
                                      TextSpan(
                                        text: '🥰',
                                        style: TextStyle(
                                            fontSize: AppLayout.getHeight(30)),
                                      ), // TextSpan
                                      TextSpan(
                                        text: '🥰',
                                        style: TextStyle(
                                            fontSize: AppLayout.getHeight(50)),
                                      ), // TextSpan
                                      TextSpan(
                                        text: '🥰',
                                        style: TextStyle(
                                            fontSize: AppLayout.getHeight(30)),
                                      ), // TextSpan
                                    ]) // TextSpan
                                        ) // RichText
                                  ],
                                ),
                              ),
                            ],  
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
