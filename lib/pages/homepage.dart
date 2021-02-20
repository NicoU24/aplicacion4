

import 'package:app4/pages/pagina1.dart';
import 'package:app4/pages/pagina2.dart';
import 'package:app4/pages/pagina3.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu'),
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
            ),
            ListTile(
              title: Text('Pagina1'),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Pagina1()
                    )
                  );
              },
            ),
            ListTile(
              title: Text('Pagina2'),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Clase1()
                    )
                  );
              },
            ),
            ListTile(
              title: Text('Pagina3'),
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MistateFull()
                    )
                  );
              }
            )
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text (
          'Cambio de paginas'
        ),
      ),
      body: Container(
        child: Center(child: Padding (
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget> [
              FlatButton(
                color: Colors.blue[900],
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Pagina 1'),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Pagina1()
                    )
                  );
                },
              ),
                FlatButton(
                color: Colors.orange,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Pagina 2'),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => Clase1()
                    )
                  );
                },
              ),
               FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                child: Text('Pagina 3'),
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => MistateFull()
                    )
                  );
                },
              )
            ],
          ),
        ),
        ),
      ),
    );
  }
}