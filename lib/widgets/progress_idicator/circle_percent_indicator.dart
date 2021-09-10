import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

Widget circlePercentIndicator(double percent, int scale) {
  if (percent <= 100){
     return CircleAvatar(
    backgroundColor: Color(0xff2D2828),
    radius: (scale * 0.6),
    child: CircularPercentIndicator(
      radius: (scale * 1.2),
      lineWidth: (scale * 0.06),
      percent: (percent / 100),
      center: Text(
        '${percent.toStringAsFixed(0)}%',
        style: TextStyle(fontSize: (scale * 0.3), color: Colors.white),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Color(0xff1B1F19),
      progressColor: Color(0xff4CD91B),
    ),
  );
  }else{
    return CircleAvatar(
    backgroundColor: Color(0xff2D2828),
    radius: (scale * 0.6),
    child: CircularPercentIndicator(
      radius: (scale * 1.2),
      lineWidth: (scale * 0.06),
      percent: 1,
      center: Text(
        '${percent.toStringAsFixed(0)}%',
        style: TextStyle(fontSize: (scale * 0.3), color: Colors.white),
      ),
      circularStrokeCap: CircularStrokeCap.round,
      backgroundColor: Color(0xff1B1F19),
      progressColor: Colors.blue[300],
    ),
  );
  }
 
}
