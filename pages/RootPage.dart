import 'package:flutter/material.dart';
import 'package:plantsforlife/myobjects/Destination.dart';


class RootPage extends StatelessWidget {
  const RootPage({ Key key, this.destination }) : super(key: key);

  final Destination destination;

  @override
  Widget build(BuildContext context) {
   /* return WillPopScope(
        onWillPop: (){
      //Navigator.pushNamed(context, "/");
      return Future.value(false);
    },
        child: Scaffold(*/

        return Scaffold(


      appBar: AppBar(
        title: Text(destination.title),
        backgroundColor: destination.color,
      ),
      backgroundColor: destination.color[50],
      body: SizedBox.expand(
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, "/list");
          },
          child: Center(
            child: Text('tap here'),
          ),
        ),
      ),
    //)
    );
  }
}