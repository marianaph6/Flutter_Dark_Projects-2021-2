import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Alert Page')),
        body: Center(
          child: ElevatedButton(
              onPressed: () => _mostrarAlert(context),
              child: Text('Mostrar Alerta'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, shape: StadiumBorder())),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context);
            }));
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(30.0)),
            title: Text('Titulo'),
            //content:Text('Contenido'),
            content: Column(
                //Evitar que la columna de la tarjeta se estire// se adapte al contenido interno
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text('Este es el contenido de la caja de la tarjeta'),
                  FlutterLogo(size: 100.0)
                ]),
            actions: <Widget>[
              FlatButton(
                  child: Text('Cancelar'),
                  onPressed: () => Navigator.of(context).pop()),
              FlatButton(
                  child: Text('Ok'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          );
        });
  }
}
