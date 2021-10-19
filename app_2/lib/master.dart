// ignore_for_file: file_names

import 'package:app_2/detail.dart';
import 'package:flutter/material.dart';

class master extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Comida")),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          print(index);
          return myCard(context, index);
        },
      ),
    );
  }

  Widget myCard(BuildContext context, int indice) {
    return Card(
      child: myContent(context, indice),
    );
  }

  Widget myContent(BuildContext context, int indice) {
    return ListTile(
      title: const Text("Este es el titulo"),
      subtitle: const Text("Este es el subtitulo"),
      leading: myImage(),
      trailing: const Icon(
          Icons.umbrella_sharp), //aqui debe ir el boton de view y el precio
      onTap: () {
        print("click click $indice");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  detail(), // Aqui enlaza a la siguiente pagina
            ));
      },
    );
  }

  Widget myImage() {
    return Image.asset(
      "assets/images/comida.jpg",
      width: 100,
      height: 100,
    );
  }
} // Fin clase
