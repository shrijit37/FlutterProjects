import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //to import pakage

void main() {
  runApp(MyApp()); //inbuilt function to run app
}

// void main()=>runApp(MyApp());            // arrow function , same as above function only valid in one line

class MyApp extends StatelessWidget {
  //to make stateless widget
  var count =0;
  void press() {
    count=count+1;
    print(count);
  }
  @override //not required means that that we are overriding build method (considered a good practice)
  Widget build(BuildContext context) //class presentin material dart pakage
  {
   var question = ["What's favourite colour","Where do ya live"];
 
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shrijit App"), 
        ),
        body: Column(children: <Widget>[
          Text(question.elementAt(count)),
          ElevatedButton(
              onPressed: press,
              child: Text(
                  "Answer 1")), // () is not used while calling the function because it will return the value of function not the function call
          ElevatedButton(
              onPressed:press,
              child: Text("Answer 2")),
          ElevatedButton(onPressed: null, child: Text("Answer 3")),
          ElevatedButton(onPressed: null, child: Text("Answer 4")),
        ]), // to create list of widgets
      ),
    ); //present in material app,takes named aurgements
    //scaffold gives all the funtionality of basic apps
    //material app is a class which has a parametrized constructor to it
  }
}
