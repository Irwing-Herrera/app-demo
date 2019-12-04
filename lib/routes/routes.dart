import 'package:flutter/material.dart';
import 'package:proyecto_final/pages/animal_detalle.dart';

import 'package:proyecto_final/pages/principal_page.dart';
import 'package:proyecto_final/pages/gatitos_page.dart';
import 'package:proyecto_final/pages/perritos_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder> {
    '/'        : (BuildContext context) => PrincipalPage(),
    'gatitos'  : (BuildContext context) => GatitoPage(),
    'perritos' : (BuildContext context) => PerritosPage(),
    'animal_detalle' : (BuildContext context) => AnimalDetalle(),
  };
}