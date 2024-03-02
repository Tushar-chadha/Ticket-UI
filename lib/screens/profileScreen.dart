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
            horizontal: AppLayout.getWidth(10),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(),
            children: [
              Gap(
                AppLayout.getHeight(10),
              ),
              Container(
                height: 85,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 85,
                          height: 85,
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
                          ],
                        ),
                      ],
                    ),
                    Gap(
                      AppLayout.getWidth(50),
                    ),
                    Column(
                      children: [
                        Gap(5),
                        Text("Edit", style: Styles.headLineStyle4),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
