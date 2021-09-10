import 'package:flutter/material.dart';

Widget profileData(String cpf, String renach, String telefone) {
  return Container(
    width: 170,
    height: 105,
    child: Stack(
      children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          child: Text(
            cpf,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontSize: 23, height: 1),
          ),
        ),
        Positioned(
          top: 40,
          left: 0,
          child: Text(
            'PI$renach',
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontSize: 23, height: 1),
          ),
        ),
        Positioned(
          top: 80,
          left: 0,
          child: Text(
            telefone,
            textAlign: TextAlign.left,
            style: TextStyle(color: Colors.white, fontSize: 23, height: 1),
          ),
        ),
      ],
    ),
  );
}
