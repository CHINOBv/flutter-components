import 'package:flutter/material.dart';
import 'package:widgets/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snap){
        //print(snap.data);
        return ListView(
          children: _listItems(snap.data),
        );
      },
    );
  }

  List<Widget> _listItems(data) {
    final List<Widget> options = [];

    data.forEach((item) {
      final tempW = ListTile(
        title: Text(item['texto']),
        leading: Icon(Icons.account_circle_outlined, color: Colors.blue, size: 35.0,),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue, size: 35.0,),
        onTap: (){},
      );
      options..add(tempW)
            ..add(Divider(height: 1,));
    });
    return options;
  }

}