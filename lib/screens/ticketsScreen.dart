import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/appInfoList.dart';
import 'package:ticketticker/utils/appLayout.dart';
import 'package:ticketticker/utils/cutomToggleButton.dart';
import 'package:ticketticker/utils/ticket_view.dart';

class TicketsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(AppLayout.getHeight(20)),
            children: [
              Gap(
                AppLayout.getHeight(50),
              ),
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
                  Gap(
                    AppLayout.getHeight(20),
                  ),
                  TicketView(
                    tickeInfo: info().ticketList[3],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
