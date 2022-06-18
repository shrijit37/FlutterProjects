// import 'package:flutter/src/widgets/framework.dart';
// import 'dart:html';




//press command and hover over syntax to get any help 
import 'package:flutter/material.dart';
class Question extends StatelessWidget {
  var questionText;

  Question(this.questionText);             //constructor

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,                    //t0 get the the complete width of screen
    child:Text(
    questionText,
    textAlign: TextAlign.center,
    style:TextStyle(fontSize: 29),
  
    ),
    );
  }
}


