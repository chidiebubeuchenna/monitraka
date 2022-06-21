import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LetsGoScreen extends StatelessWidget {
  const LetsGoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            SizedBox(height:550),
            Column(children: <Widget>[
              Align(alignment: AlignmentDirectional.bottomStart,
              child:Text("Let's Go!", textAlign: TextAlign.left, style: TextStyle(color: Colors.green, fontWeight: FontWeight.w900, fontSize: 24),),),
            SizedBox(height: 5,),
          Align(alignment: Alignment.bottomLeft,
            child: Text("You are right on Track!", textAlign: TextAlign.left, style: TextStyle(color: Colors.black, fontWeight: FontWeight.normal, fontSize: 20),),),],)
        ])
            ),
      )
        )
      );
  }
}
