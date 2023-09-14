// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';
import 'package:task2/editpage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    super.key,
    required this.name,
    required this.stack,
    required this.email,
    required this.about,
    required this.education1,
    required this.education2,
    required this.experience,
    required this.slackname,
    required this.course1,
    required this.course2,
  });
  final String name;
  String stack;
  String email;
  String about;
  String education1;
  String education2;
  String experience;
  String slackname;
  String course1;
  String course2;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: const Text(
            'My CV',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('images/abc.jpg'),
                    radius: 50,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 227,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.name == ''
                            ? Text(
                                'Oyeladun Olugbenga Phillip',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            : Text(
                                widget.name,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                        widget.stack == ''
                            ? Text(
                                'Mobile Engineer',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              )
                            : Text(
                                widget.stack,
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                        widget.email == ''
                            ? Text(
                                'gbengaoyeladun@gmail.com',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              )
                            : Text(
                                widget.email,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'ABOUT',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              widget.about == ''
                  ? Text(
                      'More than 5 months experience in Mobile development, I specialized in Flutter Mobile App projects',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )
                  : Text(
                      widget.about,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
              SizedBox(
                height: 20,
              ),
              Text(
                'EDUCATION',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.education1 == ''
                        ? Text(
                            'Lagos State Polytechnic Ikorodu (HND)',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        : Text(
                            widget.education1,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    widget.course1 == ""
                        ? Text(
                            'Computer Science',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )
                        : Text(
                            widget.course1,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                    SizedBox(
                      height: 10,
                    ),
                    widget.education2 == ''
                        ? Text(
                            'The Polytechnic Ibadan (OND)',
                            textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        : Text(
                            widget.education2,
                            textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                    widget.course2 == ""
                        ? Text(
                            'Computer Science',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )
                        : Text(
                            widget.course2,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'EXPERIENCE',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  widget.experience == ''
                      ? Text(
                          'HNGx Internxhip',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      : Text(
                          widget.experience,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                  Spacer(),
                  Text(
                    '2023',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SLACK NAME',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              widget.slackname == ''
                  ? Text(
                      'Oyeladun Olugbenga Phillip',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    )
                  : Text(
                      widget.slackname,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.white),
                    ),
              Text(
                'GITHUB HANDLE',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'github link',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => EditPage()));
                    },
                    child: Text(
                      'EDIT PAGE',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
