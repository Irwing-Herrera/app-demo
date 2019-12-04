class Animales {
  List<Animal> items = new List();
  Animales();
  Animales.fromJsonList(List<dynamic> jsonList) {
    if (jsonList == null) return;

    for (var item in jsonList) {
      final perrito = new Animal.fromJsonMap(item);
      items.add(perrito);
    }
  }
}

class Animal {
  String ruta;
  String imagen;
  String descripcion_1;
  String background;
  String raza;

  Animal({
    this.ruta,
    this.imagen,
    this.descripcion_1,
    this.background,
    this.raza
  });

  Animal.fromJsonMap( Map<String, dynamic> json ) {
    ruta   = json['ruta'];
    imagen = json['imagen'];
    descripcion_1 = json['descripcion_1'];
    background = json['background'];
    raza   = json['raza'];
  }

}