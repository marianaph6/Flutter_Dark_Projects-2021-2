import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static final pageName = 'avatar';
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar Page'), actions: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pablobedrossian.files.wordpress.com/2014/12/rosa-parks-02.jpg?w=640'),
            radius: 25.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(right: 10.0),
          child: CircleAvatar(
            child: Text('SL'),
            backgroundColor: Colors.purple,
          ),
        )
      ]),
      body: Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://www.biografias.info/wp-content/uploads/2020/04/Biograf%C3%ADa-de-Rosa-Parks.jpg'),
        placeholder: AssetImage('assets/jar-loading.gif'),
        fadeInDuration: Duration(milliseconds: 200),
      )),
    );
  }
}
