import 'package:atividade_final/widgets/profile_data.dart';
import 'package:atividade_final/widgets/status_progress.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:atividade_final/models/person.dart';
import 'package:atividade_final/screens/update_screen.dart';
import 'package:atividade_final/utils/edit_classroom.dart';
import 'package:atividade_final/widgets/progress_idicator/circle_percent_indicator.dart';

import 'package:hive_flutter/hive_flutter.dart';

import 'edit_class.dart';

class ProfileScreen extends StatefulWidget {
  final int index;
  final Person person;

  const ProfileScreen({
    required this.index,
    required this.person,
  });

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final nome;
  late final cpf;
  late final renach;
  late final phone;
  late final Box box;

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('peopleBox');
    nome = widget.person.name;
    cpf = widget.person.cpf;
    renach = widget.person.renach;
    phone = widget.person.phone;
  }

  var dropdownValue;
  @override
  Widget build(BuildContext context) {
    double teoPersent = ((widget.person.leg +
                widget.person.dir +
                widget.person.pri +
                widget.person.mec +
                widget.person.mei) *
            100) /
        45;
    double pratPersent =
        ((widget.person.moto + widget.person.carro) * 100) / 40;
    double geralPersent = ((widget.person.leg +
                widget.person.dir +
                widget.person.pri +
                widget.person.mec +
                widget.person.mei +
                widget.person.moto +
                widget.person.carro) *
            100) /
        85;
    return Scaffold(
      backgroundColor: Color(0xff383C5D),
      appBar: AppBar(
        backgroundColor: Color(0xff383C5D),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ClassScreen(
                    index: widget.index,
                    person: widget.person,
                  );
                }));
              },
              icon: Icon(Icons.edit)),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          nome,
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ValueListenableBuilder(
        valueListenable: box.listenable(),
        builder: (BuildContext context, Box<dynamic> value, Widget? child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 375,
                height: 756,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 100,
                      left: 0,
                      child: Container(
                        width: 375,
                        height: 670,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                          color: Color.fromRGBO(15, 21, 12, 0.3499999940395355),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        'Teórica',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      circlePercentIndicator(teoPersent, 70),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Prática',
                                        style: TextStyle(
                                            fontSize: 25, color: Colors.white),
                                      ),
                                      circlePercentIndicator(pratPersent, 70),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aulas Teóricas',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            theoryStatus(
                                widget.person.leg,
                                widget.person.dir,
                                widget.person.pri,
                                widget.person.mec,
                                widget.person.mei),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aulas Práticas',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            praticeStatus(
                              widget.person.moto,
                              widget.person.carro,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 19,
                      child: Container(
                        width: 338,
                        height: 166,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                offset: Offset(0, 4),
                                blurRadius: 4),
                          ],
                          color: Color(0xff404674),
                        ),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return UpdateScreen(
                                  index: widget.index, person: widget.person);
                            }));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              circlePercentIndicator(geralPersent, 90),
                              profileData(cpf, renach, phone),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
