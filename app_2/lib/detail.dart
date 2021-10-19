// ignore_for_file: file_names

import 'package:flutter/material.dart';

class detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detail")),
        body: Center(
          child: myCard(context),
        ));
  }
}

Widget myCard(BuildContext context) {
  return Card(
    child: myContent(context),
  );
}

myContent(BuildContext context) {
  return ListTile(
    title: const Text("Este es el titulo"),
    subtitle: const Text("Este es el subtitulo"),
    leading: myImage(),
    //Aqui deben ir las estrellas
    // y el boton de "pagar/comprar"
  );
}

Widget myImage() {
  return Image.asset(
    "assets/images/comida.jpg",
    width: 100,
    height: 100,
  );
}
