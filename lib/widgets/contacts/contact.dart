import 'package:atividade_final/widgets/progress_idicator/circle_percent_indicator.dart';
import 'package:flutter/material.dart';


Widget contact(BuildContext context, String name, double persent) {
  return Container(
    height: 65,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      color: Color(0xff404674),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: circlePercentIndicator(persent, 40),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            name,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        )
      ],
    ),
  );
}
