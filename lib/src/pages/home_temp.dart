import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final opts = ['one', 'two', 'tree'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Components Temp'),),
      body: ListView(
        children: _createList(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = new List<Widget>.filled(0, Text(''), growable: true);

    for (var opt in opts) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      list..add(tempWidget)
            ..add(Divider(height: 2,));
      //list.add(Divider(height: 12,));
    }

    return list;
  }
  List<Widget> _createList() {
    var widgets = opts.map((e) =>
      Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('Sub title'),
            leading: Icon(Icons.account_circle_outlined, size: 45,),
            trailing: Icon(Icons.keyboard_arrow_right, size: 45,),
          ),
          Divider( height: 1, ),
        ],
      )
    ).toList();

    return widgets;
  }

}