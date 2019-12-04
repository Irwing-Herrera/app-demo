import 'package:flutter/material.dart';

class PrincipalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Pagina Principal'),
      ),
      drawer: MenuLateral(),
      body: Card(
        child: Container(
            child: Column(
              children: <Widget>[
                Text('data'),
                Image(
                  image: AssetImage('assets/principal.gif'),
                  
                ),
                Text(
                  'text',
                ),
              ],
          ),
        ),
      )
    );
  }
}

class MenuLateral extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Aplicacion de Animales'),
              accountEmail: Text('Bienvenido'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/background.gif"),
                  fit: BoxFit.cover
                )
              ),
            ),
            ListTile(
              title: Text('Gatitos'),
              onTap: () {
                Navigator.pushNamed(context, 'gatitos');
              },
            ),
            ListTile(
              title: Text('Perritos'),
              onTap: () {
                Navigator.pushNamed(context,'perritos');
              },
            )
          ],
        ),
      );
    }
  }