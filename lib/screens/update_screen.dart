import 'package:atividade_final/models/person.dart';
import 'package:atividade_final/screens/info_screen.dart';
import 'package:atividade_final/utils/update_person_form.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



class UpdateScreen extends StatefulWidget {
  final int index;
  final Person person;

  const UpdateScreen({
    required this.index,
    required this.person,
  });

  @override
  _UpdateScreenState createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  late final Box contactBox;
  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    contactBox = Hive.box('peopleBox');
  }

  _deleteInfo(int index) {
    contactBox.deleteAt(index);

    print('Item deleted from box at index: $index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383C5D),
      appBar: AppBar(
        backgroundColor: Color(0xff383C5D),
        actions: [
          IconButton(
              onPressed: () {
                _deleteInfo(widget.index);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return InfoScreen();
                }));
              },
              icon: Icon(
                Icons.delete,
                size: 30,
              ))
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
          'Editar Dados',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: UpdatePersonForm(
          index: widget.index,
          person: widget.person,
        ),
      ),
    );
  }
}
