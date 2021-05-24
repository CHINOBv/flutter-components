import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardType1(),
          SizedBox(height: 30),
          _cardType2(),
          SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _cardType1() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.photo_album, color: Colors.blue,),
            title: Text('Title type card 1'),
            subtitle: Text('Texto de ejemplo largo  o al menos algo medianamente largo para ejemplo de texto largo :v'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancel'),
                onPressed: (){},
              ),
              TextButton(
                child: Text('Ok'),
                onPressed: (){},
              )
            ],
          ),
        ],
      ),
    );
  }

}

Widget _cardType2() {
  final _card = Container(
    
    child: Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15.0), bottomLeft: Radius.circular(15.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                offset: Offset(2.0, 1.0),
                spreadRadius: 1.0
              )
            ]
          ),
          clipBehavior: Clip.antiAlias,
          child: FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://i.pinimg.com/originals/eb/f0/02/ebf002d6348c3ae432649da4418fce40.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('Texto')
        )
      ],
    ),
  );

  return Container(
    //margin: EdgeInsets.symmetric(vertical: 30.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0, 10.0),
        )
      ]
    ),

    child: ClipRRect(
      borderRadius: BorderRadius.circular(30.0),

      child: _card,
    ),
  );
}