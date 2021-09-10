import 'package:atividade_final/widgets/progress_idicator/linear_percent.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Widget positionProgressTheory(int leg, int dir, int pri, int mec, int mei) {
  return Container(
    width: 250,
    height: 160,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 3,
          left: 0,
          child: linearPercentIndicator(18, leg),
        ),
        Positioned(
          top: 40,
          left: 0,
          child: linearPercentIndicator(16, dir),
        ),
        Positioned(
          top: 78,
          left: 0,
          child: linearPercentIndicator(4, pri),
        ),
        Positioned(
          top: 114,
          left: 0,
          child: linearPercentIndicator(3, mec),
        ),
        Positioned(
          top: 150,
          left: 0,
          child: linearPercentIndicator(4, mei),
        ),
      ],
    ),
  );
}

Widget positionProgressPratice(int moto, int carro) {
  return Container(
    width: 260,
    height: 60,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 10,
          left: 0,
          child: linearPercentIndicator(20, moto),
        ),
        Positioned(
          top: 41,
          left: 0,
          child: linearPercentIndicator(20, carro),
        ),
      ],
    ),
  );
}
