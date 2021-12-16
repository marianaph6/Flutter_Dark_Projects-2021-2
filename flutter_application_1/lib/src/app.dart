import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/pages/contador_pages.dart';
//import 'package:flutter_application_1/src/pages/home_page.dart';

//El StatelessWidget no es capaz de mantener su estado por eso se usa el statefulWidget
class MyApp extends StatelessWidget {
  @override
  //bill-->dibujar el widget
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
    );
  }
}
