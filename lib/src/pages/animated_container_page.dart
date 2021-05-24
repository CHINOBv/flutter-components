import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.green;
  BorderRadiusGeometry _radius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.fastOutSlowIn,
          duration: Duration(milliseconds: 500),
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _radius
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.replay_outlined),
        onPressed: () => _changeForm(),
      ),
    );
  }

  void _changeForm() {
    final random = Random();
          setState(() {

              _width = random.nextInt(300).toDouble();
              _height = random.nextInt(500).toDouble();
              _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 100);
              _radius = BorderRadius.circular(random.nextInt(100).toDouble());
          });
  }

}