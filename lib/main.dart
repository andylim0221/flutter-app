import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Test()
));

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('My first app',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: RaisedButton.icon(
          onPressed: (){print('Hello');},
          icon:Icon(
            Icons.add_call,
            color: Colors.white,
          ),
          label:Text('Add call',style: TextStyle(color: Colors.white)),
          color: Colors.purple,
        )
        ),
      floatingActionButton: FloatingActionButton(
        child:Text('Click'),
        onPressed: (){print('Hello');},
      ),
    );
  }
}
