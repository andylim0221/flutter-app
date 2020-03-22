import 'package:flutter/material.dart';
import 'quotes.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({this.quote,this.delete});

  @override
  Widget build(BuildContext context) {
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
            ),
            FlatButton.icon(onPressed: delete, icon: Icon(Icons.delete), label: Text('delete'))
          ],
        )
    );
  }
}

