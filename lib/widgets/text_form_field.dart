import 'package:flutter/material.dart';
import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/services.dart';

Widget textFormField(String hint, TextEditingController controller, validator) {
  return Container(
    height: 35,
    width: 305,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xff404674),
      borderRadius: BorderRadius.circular(36),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        border: InputBorder.none,
      ),
    ),
  );
}

Widget cpfFormField(String hint, TextEditingController controller, validator) {
  return Container(
    height: 35,
    width: 305,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xff404674),
      borderRadius: BorderRadius.circular(36),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      validator: validator,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        CpfInputFormatter(),
      ],
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        border: InputBorder.none,
      ),
    ),
  );
}
Widget renachFormField(String hint, TextEditingController controller, validator) {
  return Container(
    height: 35,
    width: 305,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xff404674),
      borderRadius: BorderRadius.circular(36),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      validator: validator,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        border: InputBorder.none,
      ),
    ),
  );
}
Widget telefoneFormField(String hint, TextEditingController controller, validator) {
  return Container(
    height: 35,
    width: 305,
    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
    decoration: BoxDecoration(
      color: Color(0xff404674),
      borderRadius: BorderRadius.circular(36),
    ),
    child: TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      validator: validator,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        TelefoneInputFormatter(),
      ],
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        border: InputBorder.none,
      ),
    ),
  );
}
