import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JOLA NIÑO'),
      ),
      body: ListView(
          //padding:EdgeInsets.symmetric(horizontal:50.0, vertical:10.0),
          padding: EdgeInsets.all(20),
          children: <Widget>[
            _cardTipo1(),
            //Espacio
            SizedBox(height: 30.0),
            
            _cardTipo2(),
            SizedBox(height: 30.0),
             _cardTipo1(),
            //Espacio
            SizedBox(height: 30.0),
            
            _cardTipo2(),
            SizedBox(height: 30.0),
             _cardTipo1(),
            //Espacio
            SizedBox(height: 30.0),
            
            _cardTipo2(),
            SizedBox(height: 30.0),
             _cardTipo1(),
            //Espacio
            SizedBox(height: 30.0),
            
            _cardTipo2(),
            SizedBox(height: 30.0),
             _cardTipo1(),
            //Espacio
            SizedBox(height: 30.0),
            
            _cardTipo2(),
            SizedBox(height: 30.0),
          ]),
    );
  }

  Widget _cardTipo1() {
    return Card(
      //que tan alta va a estar la terjeta con respecto a la sombra
      elevation: 10.0,
      //Borde tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: <Widget>[
          ListTile(
              leading: Icon(Icons.photo_album, color: Colors.blue),
              title: Text('SOY EL TITULO DE ESTA TARGETA'),
              subtitle: Text(
                  'AQui estamos con la decsripción de la terjeta que quiero que ustedes vean con una idea de lo que quiero mostrarles')),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            TextButton(
              child: Text('cancelar'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {},
            ),
          ])
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
        //Que nada de lo que esté en la tarjeta se salga
        //clipBehavior: Clip.antiAlias,
        child: Column(
      children: <Widget>[
        FadeInImage(
          //Que la imagen se adapte a ancho
          fit: BoxFit.cover,
          height: 300.0,
          //gif de espera
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
          fadeInDuration: Duration(milliseconds: 400),
        ),
        /* Image(
          image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg')
        ), */
        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No wuiero hacer Sprint'))
      ],
    ));
    return Container(
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            //posición
            offset: Offset(2.0,-10.0)
          )
        ]
      ),
      child:ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
        child: card,
      )
    );
  }
}
