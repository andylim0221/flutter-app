import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotecards.dart';

void main() => runApp(MaterialApp(
  home:Test()
));

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  List<Quote> names=[Quote('book', 'author'),Quote('DDDdDdDdD', 'autAhor'),Quote('bDook', 'authorA')];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text('Resume',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Column(
        children:names.map((quote)=> QuoteCard(
            quote:quote,
            delete:(){
          setState(() {
            names.remove(quote);
          });
        })).toList(),
        )
      );
  }
}

