import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://s.libertaddigital.com/2018/11/13/1920/1080/fit/stan-lee-spiderman.jpg'),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.amber,
              foregroundColor: Colors.white,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('https://dam.smashmexico.com.mx/wp-content/uploads/2017/08/12220644/marvel-mensaje-stan-lee-contra-odio-carta-cover.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}