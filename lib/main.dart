import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());

}
//MyApp will take values from StatelessWidget It will inhert from this and only add to this.
//one class can inherit from one only
//extends is the keyword to inherit from another class
//functions in a class is called methods
//BuildContext is a special object type provided by Flutter
// build method here will return a widget here
//MaterialApp (is a class where we can pass data with the feature called constructor) turns the combination of widgets into a real app that can be rendered
//Home is basically the core widget which Flutter will bring onto the screen
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(home:Text{'Hello'),);
  }
}