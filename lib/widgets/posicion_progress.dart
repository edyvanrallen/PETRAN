import 'package:atividade_final/widgets/progress_idicator/linear_percent.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

Widget positionProgressTheory(int leg, int dir, int pri, int mec, int mei) {
  return Container(
    width: 250,
    height: 150,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 14,
          left: 0,
          child: linearPercentIndicator(18, leg),
        ),
        Positioned(
          top: 42,
          left: 0,
          child: linearPercentIndicator(16, dir),
        ),
        Positioned(
          top: 72,
          left: 0,
          child: linearPercentIndicator(4, pri),
        ),
        Positioned(
          top: 103,
          left: 0,
          child: linearPercentIndicator(3, mec),
        ),
        Positioned(
          top: 131,
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
          top: 14,
          left: 0,
          child: linearPercentIndicator(20, moto),
        ),
        Positioned(
          top: 42,
          left: 0,
          child: linearPercentIndicator(20, carro),
        ),
      ],
    ),
  );
}
