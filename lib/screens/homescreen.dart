import 'package:flutter/material.dart';
import 'package:ticketticker/appConstants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFeeedf2),
      body: SafeArea(
        child: ListView(children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
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
            ],
          )
        ]),
      ),
    );
  }
}
