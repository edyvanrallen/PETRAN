import 'package:flutter/material.dart';

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
