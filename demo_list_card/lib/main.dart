import 'package:flutter/material.dart';

class CardOptionItem {
  final String title;
  bool selected;
  CardOptionItem({required this.title, this.selected: false});
}

class CardModel {
  String title;
  List<CardOptionItem> options = [];
  CardModel({required this.options, this.title: ''});
}

List<CardModel> model = <CardModel>[];

void main() {
  model = List.generate( 3, (int i) => CardModel( title: 'list $i', options: List.generate( 3, (int j) => CardOptionItem(title: 'pregunta $j'))));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _getBody(context),
    );
  }

  _getBody(BuildContext context) {
    return Container(
      height: 250,
      // color: Colors.red,
      child: ListView(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        scrollDirection: Axis.horizontal,
        children: model.map((CardModel data) {
          return _getCardUI(data);
        }).toList(),
      ),
    );
  }

  Widget _getCardUI(CardModel data) {
    return Card(
      color: Colors.white,
      elevation: 1,
      child: Container(
        padding: EdgeInsets.all(16),
        width: 250,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(data.title.toUpperCase()),
              ...data.options
                  .map((CardOptionItem option) => CheckboxTile(
                        data: option,
                      ))
                  .toList(),
            ]),
      ),
    );
  }
}

class CheckboxTile extends StatefulWidget {
  final CardOptionItem data;
  const CheckboxTile({Key key, this.data}) : super(key: key);

  @override
  _CheckboxTileState createState() => _CheckboxTileState();
}

class _CheckboxTileState extends State<CheckboxTile> {
  get option => widget.data;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: option.selected,
      title: Text(option.title),
      onChanged: (bool flag) {
        option.selected = flag;
        setState(() {});
      },
    );
  }
}