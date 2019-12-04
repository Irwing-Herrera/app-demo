import 'package:flutter/material.dart';
import 'package:proyecto_final/models/animal_model.dart';
import 'package:proyecto_final/provaiders/menu_provaider.dart';

class PerritosPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perritos'),
      ),
      body: _listaMenu(),
    );
  }

  Widget _listaMenu() {
    return FutureBuilder(
      future:  menuProvaider.cargarListaPerritos(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context)
        );
      },
    );
  }

  List<Widget> _listaItems(List<Animal> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widget = ListTile(
        title: Text(opt.raza),
        leading: CircleAvatar(
          backgroundImage: AssetImage(opt.imagen), // no matter how big it is, it won't overflow
        ),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueAccent),
        onTap: () {
          Navigator.pushNamed(context, 'animal_detalle', arguments: opt);
          // print(opt);
        },
      );

      opciones..add(widget)
              ..add(Divider());
    });

    return opciones;
  }
}