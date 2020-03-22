import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  home:Test()
));

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {

  List<Quote> names=[Quote('book', 'author'),Quote('DDDdDdDdD', 'autAhor'),Quote('bDook', 'authorA')];

  Widget quoteTemplate(quote) {
    return Card(
      color: Colors.grey,
      margin: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
      borderOnForeground: true,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            height:100.0,
            alignment: Alignment.center,
            child: Text(quote.text,style: TextStyle(
              fontSize: 18.0,
              color: Colors.yellow,
              fontWeight: FontWeight.bold
            ),),
          )
        ],
      )
    );
  }

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
        children:names.map((quote)=> quoteTemplate(quote)).toList(),
        )
      );
  }
}

