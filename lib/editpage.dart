// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task2/homepage.dart';
import 'package:task2/widget/textfields.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final namecontroller = TextEditingController();
  final stackcontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final aboutcontroller = TextEditingController();
  final educationcontroller = TextEditingController();
  final educontroller = TextEditingController();
  final exprcontroller = TextEditingController();
  final slackcontroller = TextEditingController();
  final coursecontroller = TextEditingController();
  final courcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Edit Your Data',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            children: [
              Text(
                'NAME',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Textfields(namecontroller: namecontroller, hint: 'name'),
              SizedBox(height: 20),
              Textfields(namecontroller: stackcontroller, hint: 'stack'),
              SizedBox(height: 20),
              Textfields(namecontroller: emailcontroller, hint: 'email'),
              Text(
                'ABOUT',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Textfields(namecontroller: aboutcontroller, hint: 'about'),
              SizedBox(height: 20),
              Text(
                'EDUCATION',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Textfields(
                  namecontroller: educationcontroller,
                  hint: 'education and qualification'),
              SizedBox(height: 20),
              Textfields(namecontroller: coursecontroller, hint: 'course'),
              SizedBox(height: 20),
              Textfields(
                  namecontroller: educontroller,
                  hint: 'education and qualification'),
              SizedBox(height: 20),
              Textfields(namecontroller: courcontroller, hint: 'course'),
              SizedBox(height: 20),
              Text(
                'EXPERIENCE',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Textfields(
                  namecontroller: exprcontroller, hint: 'experience details'),
              SizedBox(height: 20),
              Text(
                'SLACK NAME',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Textfields(namecontroller: slackcontroller, hint: 'slack name'),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 300,
                color: Colors.black,
                child: ElevatedButton(
                  onPressed: () {
                    if (namecontroller.text == '' ||
                        stackcontroller.text == '' ||
                        emailcontroller.text == '' ||
                        aboutcontroller.text == '' ||
                        educationcontroller.text == '' ||
                        educontroller.text == '' ||
                        courcontroller.text == '' ||
                        coursecontroller.text == '' ||
                        exprcontroller.text == '' ||
                        slackcontroller.text == '') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.green,
                          content: Text(
                            'All Fields Required',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )));
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => MyHomePage(
                              name: namecontroller.text,
                              stack: stackcontroller.text,
                              email: emailcontroller.text,
                              about: aboutcontroller.text,
                              education1: educationcontroller.text,
                              education2: educontroller.text,
                              experience: exprcontroller.text,
                              slackname: slackcontroller.text,
                              course1: coursecontroller.text,
                              course2: courcontroller.text)));
                    }
                  },
                  child: const Text(
                    'UPDATE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
