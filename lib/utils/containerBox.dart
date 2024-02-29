import 'package:flutter/material.dart';

class ContainerBox extends StatelessWidget {
  final Widget addWidget;
  final boxColor;

  const ContainerBox({super.key, required this.addWidget, this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: boxColor ?? Colors.white,
          border: Border.all(
            color: Colors.white60,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: addWidget);
  }
}
