import 'package:flutter/material.dart';

import 'package:proyecto_final/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mascotas',
      initialRoute: '/',
      routes: getRoutes(),
    );
  }
}
