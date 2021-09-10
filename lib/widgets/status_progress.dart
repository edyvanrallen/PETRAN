import 'package:atividade_final/widgets/posicion_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget theoryStatus(int leg, int dir, int pri, int mec, int mei) {
  return Container(
    height: 200,
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
            if(leg < 10)
            Text(
              '0$leg/18',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(leg >= 10)
            Text(
              '$leg/18',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(dir < 10)
            Text(
              '0$dir/16',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(dir >= 10)
            Text(
              '$dir/16',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(pri < 10)
            Text(
              '0$pri/04',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(pri >= 10)
            Text(
              '$pri/04',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(mec < 10)
            Text(
              '0$mec/03',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(mec >= 10)
            Text(
              '$mec/03',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
             if(mei < 10)
            Text(
              '0$mei/04',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
             if(mei >= 10)
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
    height: 80,
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
              Icons.two_wheeler,
              color: Colors.white,
              size: 21,
            ),
            Icon(
              Icons.drive_eta,
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
             if(moto < 10)
            Text(
              '0$moto/20',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(moto >= 10)
            Text(
              '$moto/20',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(carro < 10)
            Text(
              '0$carro/20',
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
            if(carro >= 10)
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
