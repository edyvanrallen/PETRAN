import 'package:atividade_final/models/person.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class EditClassroom extends StatefulWidget {
  final int index;
  final Person person;

  const EditClassroom({
    required this.index,
    required this.person,
  });
  @override
  _EditClassroomState createState() => _EditClassroomState();
}

class _EditClassroomState extends State<EditClassroom> {
  late final Box box;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'LEGISLAÇÃO',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.leg}/18',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.leg > 0)
                          widget.person.leg--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.leg++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'DIREÇÃO DEFENSIVA',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.dir}/16',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.dir > 0)
                          widget.person.dir--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.dir++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'PRIMEIROS SOCORROS',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.pri}/04',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.pri > 0)
                          widget.person.pri--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.pri++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'MECÂNICA',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.mec}/03',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.mec > 0)
                          widget.person.mec--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.mec++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'MEIO AMBIENTE',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.mei}/04',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.mei > 0)
                          widget.person.mei--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.mei++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'MOTO',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.moto}/20',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.moto > 0)
                          widget.person.moto--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.moto++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'CARRO',
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
              Container(
                width: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xff404674),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${widget.person.carro}/20',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          if(widget.person.carro > 0)
                          widget.person.carro--;
                        });
                      },
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.person.carro++;
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      constraints: BoxConstraints.tightFor(
                        width: 30,
                        height: 30,
                      ),
                      shape: CircleBorder(),
                      fillColor: Color(0xFF4C4F5E),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
