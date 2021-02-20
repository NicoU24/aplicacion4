import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Pagina1'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Center(
          child: Text(
            'Soy la pagina1'
          ),
        ),
      ),
    );
  }
}
