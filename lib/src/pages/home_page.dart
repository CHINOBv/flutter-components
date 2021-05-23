import 'package:flutter/material.dart';
import 'package:widgets/src/pages/alert_page.dart';
import 'package:widgets/src/providers/menu_provider.dart';
import 'package:widgets/src/utils/icon_string_util.dart';

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
          children: _listItems(snap.data, context),
        );
      },
    );
  }

  List<Widget> _listItems(data, context) {
    final List<Widget> options = [];

    data.forEach((item) {
      final tempW = ListTile(
        title: Text(item['texto']),
        leading: getIcon(item['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue, size: 35.0,),
        onTap: (){
          final route = MaterialPageRoute(
            builder: (context) {
              return AlertPage();
            }
          );
          Navigator.pushNamed(context, item['ruta']);
        },
      );
      options..add(tempW)
            ..add(Divider(height: 1,));
    });
    return options;
  }

}