import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Scaffold(
  appBar: AppBar(
    title:Text('My first app'),
    centerTitle: true,
    backgroundColor: Colors.cyanAccent,
  ),
    body: Center(
        child:Text('Hello world',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),),
  ),
   floatingActionButton: FloatingActionButton(
     child:Text('Click'),
     onPressed: (){},
   ),
  ),
));
