import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appInfoList.dart';
import 'package:ticketticker/utils/appLayout.dart';
import 'package:ticketticker/utils/cutomToggleButton.dart';
import 'package:ticketticker/utils/ticket_view.dart';

class TicketsScreen extends StatelessWidget {
  Color lightGrey = Styles.lightGrey;
  var ticketInfo = info().ticketList[2];

  @override
  Widget build(BuildContext context) {
    var size = AppLayout.getSize(context).width * 0.85;
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: EdgeInsets.all(AppLayout.getHeight(15)),
              children: [
                // header start
                Text(
                  "Tickets",
                  style: Styles.headLineStyle1.copyWith(fontSize: 50),
                ),
                Column(
                  children: [
                    Gap(
                      AppLayout.getHeight(20),
                    ),
                    const customToggleButton(
                        firstLabel: "Upcoming", secondLabel: "Previous"),
                    // ^ header End ^
                    Gap(
                      AppLayout.getHeight(20),
                    ),

                    // Top Ticket Section Start
                    TicketView(
                      isColor: false,
                      tickeInfo: ticketInfo,
                    ),
                    // ^ Top Ticket Section End ^
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      width: size,
                      decoration: const BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(width: 0.2)),
                          color: Colors.white),
                      //  Middle Ticket Section Start
                      child: Column(
                        children: [
                          Gap(AppLayout.getHeight(30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Flutter Dash",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Styles.textColor),
                                  ),
                                  Text(
                                    "passenger",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: lightGrey),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "1263 819212",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Styles.textColor),
                                  ),
                                  Text(
                                    "Passport",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: lightGrey),
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
                                    "000 55555 2233",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Styles.textColor),
                                  ),
                                  Text(
                                    "Number of E-Ticket",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: lightGrey),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "B2SG28",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Styles.textColor),
                                  ),
                                  Text(
                                    "Booking Code",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: lightGrey),
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
                                  Row(
                                    children: [
                                      Container(
                                        height: AppLayout.getHeight(30),
                                        width: AppLayout.getHeight(50),
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/images/visa.png"))),
                                      ),
                                      Text(
                                        " *** 268",
                                        style: Styles.headLineStyle3
                                            .copyWith(color: Styles.textColor),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "Payment Method",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: Styles.lightGrey),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Rs.2490",
                                    style: Styles.headLineStyle3
                                        .copyWith(color: Styles.textColor),
                                  ),
                                  Text(
                                    "price",
                                    style: Styles.headLineStyle4
                                        .copyWith(color: lightGrey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Gap(AppLayout.getHeight(30)),
                        ],
                      ),
                      // ^ Middle Ticket Section End ^
                    ),
                    //  Barcode Section Start
                    Container(
                      width: size,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(
                          AppLayout.getHeight(15),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              AppLayout.getHeight(15),
                            ),
                          ),
                          child: BarcodeWidget(
                              height: 70,
                              backgroundColor: Colors.white,
                              color: Styles.textColor,
                              barcode: Barcode.code128(escapes: false),
                              drawText: false,
                              data:
                                  "https://github.com/Tushar-chadha/ticketticker.git"),
                        ),
                      ),
                    ),
                    // ^ Barcode Section End ^
                  ],
                ),
                // Ticket Coloured Section Start
                Padding(
                  padding: EdgeInsets.all(AppLayout.getHeight(20)),
                  child: TicketView(
                    tickeInfo: ticketInfo,
                  ),
                ),
                // ^ Ticket Coloured Section End ^
                Gap(AppLayout.getHeight(10)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
