// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Textfields extends StatelessWidget {
  const Textfields(
      {super.key, required this.namecontroller, required this.hint});

  final TextEditingController namecontroller;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField(
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.normal, color: Colors.white),
        controller: namecontroller,
        decoration: InputDecoration(
          hintText: hint,
          focusColor: Colors.blue,
          hintStyle: TextStyle(fontSize: 15, color: Colors.white38),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.blue)),
        ),
      ),
    );
  }
}
