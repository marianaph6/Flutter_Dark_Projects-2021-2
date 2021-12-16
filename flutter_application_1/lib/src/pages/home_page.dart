import 'package:flutter/material.dart';

//Las paginas son widgets
class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 25);
  final conteo = 5;
  @override
  Widget build(BuildContext context) {
    //Scaffold-->
    return Scaffold(
      appBar: AppBar(
        title: Text('TITULO'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de clicks:', style: estiloTexto),
            Text('$conteo', style: estiloTexto)
          ],
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,-->Cambiar ubicación de un boton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('HOLA MUNDO');
        },
      ),
    );
  }
}
