import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticketticker/utils/appInfoList.dart';
import 'package:ticketticker/utils/ticket_view.dart';
import 'package:ticketticker/utils/appConstants.dart';
import 'package:ticketticker/utils/hotelCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFeeedf2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good Morning!", style: Styles.headLineStyle3),
                          Text(
                            "Book Tickets.",
                            style: Styles.headLineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/images/img_1.png"))),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.white60,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Search...',
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                Gap(20),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Upcoming Flights",
                        style: Styles.headLineStyle2,
                      ),
                      InkWell(
                        // ignore: avoid_print
                        onTap: () => print("view All pressed"),
                        child: Text(
                          "view all",
                          style: Styles.textStyle
                              .copyWith(color: Styles.primaryColor),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        info().ticketList.length,
                        (index) => Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child:
                              TicketView(tickeInfo: info().ticketList[index]),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Hotels",
                      style: Styles.headLineStyle2,
                    ),
                    InkWell(
                      // ignore: avoid_print
                      onTap: () => print("view All pressed"),
                      child: Text(
                        "view all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                    )
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: info()
                        .hotelList
                        .map((map) => HotelCard(
                              hotelInfo: map,
                            ))
                        .toList(),
                  ),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
// List.generate(
//                         info().hotelList.length,
//                         (index) => Padding(
//                               padding: EdgeInsets.all(8.0),
//                               child:
//                                   HotelCard(hotelInfo: info().hotelList[index]),
//                             )),