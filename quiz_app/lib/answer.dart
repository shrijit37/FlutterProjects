import 'package:flutter/material.dart';


class Answer extends StatelessWidget {
  
  // final void Callback selectHandler;
  // final Function selectHandler;           //pointer to function
  
  VoidCallback selectHandler;                //pointer to void function 
  final String AnswerText;
  
  Answer(this.selectHandler, this.AnswerText);
 

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style:ButtonStyle(
            backgroundColor:MaterialStateProperty.all(Color.fromARGB(255, 59, 255, 160)),
            foregroundColor:MaterialStateProperty.all(Colors.black)) ,
          child: Text(AnswerText),
          onPressed: selectHandler,
        ),
        );
  }
}
