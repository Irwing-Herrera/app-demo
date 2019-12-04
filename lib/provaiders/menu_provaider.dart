import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:proyecto_final/models/animal_model.dart';

class _MenuProvaider {
  
  List<dynamic> opciones = [];

  Future<List<Animal>> cargarListaPerritos() async {

    final resp = await rootBundle.loadString('data/menu_perritos.json');
    
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    final perritos = new Animales.fromJsonList(opciones);

    return perritos.items;
  }

  Future<List<Animal>> cargarListaGatitos() async {

    final resp = await rootBundle.loadString('data/menu_gatitos.json');
    
    Map dataMap = json.decode(resp);
    opciones = dataMap['rutas'];

    final perritos = new Animales.fromJsonList(opciones);

    return perritos.items;
  }

}

final menuProvaider = new _MenuProvaider();