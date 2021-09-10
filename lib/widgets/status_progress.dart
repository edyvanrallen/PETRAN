import 'package:atividade_final/widgets/posicion_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget theoryStatus(int leg, int dir, int pri, int mec, int mei) {
  return Container(
    height: 157,
    width: 352,
    decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(17)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.gavel,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.drive_eta,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.medical_services,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.settings,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.park,
              color: Colors.white,
              size: 21,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            positionProgressTheory(leg, dir, pri, mec, mei),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$leg/18',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              '$dir/16',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              '$pri/04',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              '$mec/03',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              '$mei/04',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget praticeStatus(int moto, int carro) {
  return Container(
    height: 68,
    width: 352,
    decoration: BoxDecoration(
        color: Colors.black, borderRadius: BorderRadius.circular(17)),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.drive_eta,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.two_wheeler,
              color: Colors.white,
              size: 21,
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            positionProgressPratice(moto, carro),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              '$moto/20',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            Text(
              '$carro/20',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  );
}
