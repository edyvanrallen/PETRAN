import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:atividade_final/screens/profile_screen.dart';
import 'package:atividade_final/screens/update_screen.dart';
import 'package:atividade_final/widgets/progress_idicator/circle_percent_indicator.dart';
import 'package:atividade_final/widgets/contacts/contact.dart';
import 'package:atividade_final/widgets/text_form_field.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:atividade_final/screens/add_screen.dart';

class InfoScreen extends StatefulWidget {
  @override
  _InfoScreenState createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final _nameController = TextEditingController();
  late final Box contactBox;

  // Delete info from people box

  String? _fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field can\'t be empty';
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    contactBox = Hive.box('peopleBox');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff383C5D),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff383C5D),
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AddScreen();
                }));
                  },
                  icon: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ))),
          title: textFormField('Pesquisar', _nameController, _fieldValidator)),
      body: ValueListenableBuilder(
        valueListenable: contactBox.listenable(),
        builder: (context, Box box, widget) {
          if (box.isEmpty) {
            return Center(
              child: Text(
                'Vazio',
                style: TextStyle(color: Colors.white),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                var currentBox = box;
                var personData = currentBox.getAt(index)!;
                double geralPersent = ((personData.leg +
                            personData.dir +
                            personData.pri +
                            personData.mec +
                            personData.mei +
                            personData.moto +
                            personData.carro) *
                        100) /
                    85;

                return InkWell(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProfileScreen(
                        index: index,
                        person: personData,
                      ),
                    ),
                  ),
                  child: ListTile(
                      title: contact(context, personData.name, geralPersent)),
                );
              },
            );
          }
        },
      ),
    );
  }
}
