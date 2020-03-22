import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home:Test()
));

class Test extends StatelessWidget {
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
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://image.shutterstock.com/image-photo/portrait-surprised-beautifully-cat-on-260nw-1604783341.jpg'),
                radius: 50.0,
              )
            ),
            Divider(
              height:90.0,
              color: Colors.grey,
            ),
            Text('NAME', style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
            ),),
            SizedBox(height: 10,),
            Text('ANDY LIM', style: TextStyle(
                color:Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 30,),
            Text('COMPANY', style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
            ),),
            SizedBox(height: 10,),
            Text('AGLIVE LIMITED', style: TextStyle(
                color:Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),),
            SizedBox(height:30),
            Text('EMAIL', style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0
            ),),
            SizedBox(height:10),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color:Colors.yellow,
                ),
                SizedBox(width:10),
                Text('limchinhuat0221@gmail.com', style: TextStyle(
                    color:Colors.yellow,
                    letterSpacing: 2.0,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
              ],
            )
          ],
        )
      ),
    );
  }
}
