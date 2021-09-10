import 'package:atividade_final/models/person.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:atividade_final/screens/info_screen.dart';
import 'package:atividade_final/utils/edit_classroom.dart';

class ClassScreen extends StatefulWidget {
  final int index;
  final Person person;

  const ClassScreen({
    required this.index,
    required this.person,
  });

  @override
  _ClassScreenState createState() => _ClassScreenState();
}



class _ClassScreenState extends State<ClassScreen> {
    late Box box;
   
  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('peopleBox');
  }

  _saveClassroom(){
  Person newPerson = Person(
      name: widget.person.name,
      cpf: widget.person.cpf,
      renach: widget.person.renach,
      phone: widget.person.phone,
      leg: widget.person.leg,
      dir: widget.person.dir,
      pri: widget.person.pri,
      mec: widget.person.mec,
      mei: widget.person.mei,
      moto: widget.person.carro,
      carro: widget.person.moto,
    );

    box.putAt(widget.index, newPerson);

    print('Info updated in box!');
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383C5D),
      appBar: AppBar(
        backgroundColor: Color(0xff383C5D),
        leading: Container(),
        actions: [
          IconButton(
              onPressed: () {
                _saveClassroom();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoScreen();
                }));
              },
              icon: Icon(Icons.check,size: 30,)),
        ],
        title: Text(
          'Editar Aulas',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: EditClassroom(
        index: widget.index,
        person: widget.person,
      ),
    );
  }
}
