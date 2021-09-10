import 'package:atividade_final/models/person.dart';
import 'package:atividade_final/screens/info_screen.dart';
import 'package:atividade_final/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';


class AddPersonForm extends StatefulWidget {
  const AddPersonForm({Key? key}) : super(key: key);

  @override
  _AddPersonFormState createState() => _AddPersonFormState();
}

class _AddPersonFormState extends State<AddPersonForm> {
  final _nameController = TextEditingController();
  final _cpfController = TextEditingController();
  final _renachController = TextEditingController();
  final _phoneController = TextEditingController();
  late int aula = 0;
  final _personFormKey = GlobalKey<FormState>();

  late final Box box;

  String? _fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field can\'t be empty';
    }
    return null;
  }

  // Add info to people box
  _addInfo() async {
    Person newPerson = Person(
      name: _nameController.text,
      cpf: _cpfController.text,
      renach: _renachController.text,
      phone: _phoneController.text,
      leg: aula,
      dir: aula,
      pri: aula,
      mec: aula,
      mei: aula,
      moto: aula,
      carro: aula,
    );

    box.add(newPerson);
    print('Info added to box!');
  }

  @override
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('peopleBox');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _personFormKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/named.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: textFormField('Nome', _nameController, _fieldValidator),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: cpfFormField('CPF', _cpfController, _fieldValidator),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child:
                    renachFormField('Renach', _renachController, _fieldValidator),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: telefoneFormField(
                    'Telefone', _phoneController, _fieldValidator),
              ),
              Ink(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff2FB72C),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        offset: Offset(0, 4),
                        blurRadius: 4),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    if (_personFormKey.currentState!.validate()) {
                      _addInfo();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return InfoScreen();
                          },
                        ),
                      );
                    }
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
