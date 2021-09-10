import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

Widget linearPercentIndicator(int scale, int progress) {
  if(progress <= scale){
     return LinearPercentIndicator(
    width: (scale * 13),
    lineHeight: 10,
    percent: 
    (((progress * 13) * 100) / (scale * 13)) / 100,
    linearStrokeCap: LinearStrokeCap.roundAll,
    progressColor: Color(0xff4CD91B),
  );
  }else{
    return LinearPercentIndicator(
    width: (scale * 13),
    lineHeight: 10,
    percent: 
    (((scale * 13) * 100) / (scale * 13)) / 100,
    linearStrokeCap: LinearStrokeCap.roundAll,
    progressColor: Colors.blue[300],
  );
  }
 
}
