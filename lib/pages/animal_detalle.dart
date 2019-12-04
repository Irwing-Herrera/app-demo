import 'package:flutter/material.dart';

import 'package:proyecto_final/models/animal_model.dart';
import 'package:proyecto_final/pages/principal_page.dart';

class AnimalDetalle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Animal animal = ModalRoute.of(context).settings.arguments;
    
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _crearAppBar(animal),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SizedBox(height: 10.0),
                _imgAnimal(animal),
                _descripcion(animal, context)
              ]
            ),
          )
        ],
      ),
    );
  }

  Widget _crearAppBar(Animal animal) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.blueAccent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(animal.raza),
        background: FadeInImage(
          image: AssetImage(animal.background),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(seconds: 1),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _imgAnimal(Animal animal) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: AssetImage(animal.imagen),
              height: 150.0,
            ),
          ),
          SizedBox(width: 20.0),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(animal.raza)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _descripcion(Animal animal, BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
      child: Column(
        children: <Widget>[
          Text(
            'Primer Parrafo',
            style: Theme.of(context).textTheme.title,
          ),
          Divider(),
          Text(
            animal.descripcion_1,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.subhead,
          ),
          Divider(),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrincipalPage()),
              );
            },
            child: Icon(Icons.home),
          )
        ],
      )
    );
  }
}