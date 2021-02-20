import 'package:flutter/material.dart';

class MistateFull extends StatefulWidget {
  @override
  _MistateFullState createState() => _MistateFullState();
}

class _MistateFullState extends State<MistateFull> {

 String flutterText = "";
 int index = 0;
 List<String> collections= ['Si me' , 'Salio el de' , 'Flutter', 'es', 'Genial'];

 void onPressButton(){
   setState((){
     flutterText = collections[index];
     index = index < 4 ? index + 1 : 0;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Statefull Widget"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget> [
              Text (
                flutterText,
                 style: TextStyle(fontSize: 40.0),
                 ),
              RaisedButton(
                onPressed: onPressButton,
              child: Text(
                "Actualizar",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              color: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}