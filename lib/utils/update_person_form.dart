import 'package:atividade_final/models/person.dart';
import 'package:atividade_final/screens/info_screen.dart';
import 'package:atividade_final/widgets/text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';



class UpdatePersonForm extends StatefulWidget {
  final int index;
  final Person person;

  const UpdatePersonForm({
    required this.index,
    required this.person,
  });

  @override
  _UpdatePersonFormState createState() => _UpdatePersonFormState();
}

class _UpdatePersonFormState extends State<UpdatePersonForm> {
  final _personFormKey = GlobalKey<FormState>();

  late final _nameController;
  late final _cpfController;
  late final _renachController;
  late final _phoneController;
  late final Box box;

  String? _fieldValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Field can\'t be empty';
    }
    return null;
  }

  // Update info of people box
  _updateInfo() {
    Person newPerson = Person(
      name: _nameController.text,
      cpf: _cpfController.text,
      renach: _renachController.text,
      phone: _phoneController.text,
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
  void initState() {
    super.initState();
    // Get reference to an already opened box
    box = Hive.box('peopleBox');
    _nameController = TextEditingController(text: widget.person.name);
    _cpfController = TextEditingController(text: widget.person.cpf);
    _renachController = TextEditingController(text: widget.person.renach);
    _phoneController = TextEditingController(text: widget.person.phone);
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
                      _updateInfo();
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
                      'Salvar',
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
