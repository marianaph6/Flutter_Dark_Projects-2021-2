

import 'package:flutter/cupertino.dart';
import 'package:flutter_components/src/pages/alert_page.dart';
import 'package:flutter_components/src/pages/animated_container.dart';
import 'package:flutter_components/src/pages/avatar_page.dart';
import 'package:flutter_components/src/pages/card_page.dart';
import 'package:flutter_components/src/pages/home_page.dart';
import 'package:flutter_components/src/pages/input_page.dart';
import 'package:flutter_components/src/pages/listview_page.dart';
import 'package:flutter_components/src/pages/slider_page.dart';

Map<String,WidgetBuilder> getApplicationsRoutes(){

  return <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        AvatarPage.pageName: (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
        'inputs': (BuildContext context) => InputPage(),
        'slider': (BuildContext context) => SliderPage(),
        'list': (BuildContext context) => ListaPage(),
      };
}

