import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatelessWidget(context),
      ),
    );
  }
}


class User{
  String name;
  int age;
  String role;

  User({required this.name, required this.age, required this.role});
}

/// This is the stateless widget that the main application instantiates.
class MyStatelessWidget extends StatefulWidget {
  MyStatelessWidget(BuildContext context);


  @override
  _MyStatelessWidgetState createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  List<User> users = [User(name: "Sarah", age: 19, role: "Student"), User(name: "Janine", age: 43, role: "Professor")];
  List<User> usersFiltered = [];
  TextEditingController controller = TextEditingController();
  String _searchResult = '';

  @override
  void initState() {
    super.initState();
    usersFiltered = users;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: new ListTile(
            leading: new Icon(Icons.search),
            title: new TextField(
                controller: controller,
                decoration: new InputDecoration(
                    hintText: 'Search', border: InputBorder.none),
                onChanged: (value) {
                  setState(() {
                    _searchResult = value;
                     usersFiltered = users.where((user) => user.name.contains(_searchResult) || user.role.contains(_searchResult)).toList();
                  });
                }),
            trailing: new IconButton(
              icon: new Icon(Icons.cancel),
              onPressed: () {
                setState(() {
                  controller.clear();
                  _searchResult = '';
                  usersFiltered = users;
                });
              },
            ),
          ),
        ),
        DataTable(
          columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Name',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Age',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            DataColumn(
              label: Text(
                'Role',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
          ],
          rows: List.generate(usersFiltered.length, (index) =>
              DataRow(
                cells: <DataCell>[
                  DataCell(Text(usersFiltered[index].name)),
                  DataCell(Text(usersFiltered[index].age.toString())),
                  DataCell(Text(usersFiltered[index].role)),
                ],
              ),
          ),
        ),
      ],
    );
  }
}
