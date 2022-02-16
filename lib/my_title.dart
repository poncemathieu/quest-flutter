// lib/my_title.yaml

import 'package:flutter/material.dart';

class MyTitle extends StatefulWidget {
  String title;

  MyTitle(this.title, {Key? key}) : super(key: key);

  @override
  _MyTitleState createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> {
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          child: Text(
            widget.title,
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
              color: Colors.black,
            ),
          ),
          onTap: () {
            setState(() {
              _isClicked = !_isClicked;
            });
          },
        ),
        Visibility(
          child: Text(
            'Praesent pulvinar aliquam sapien vitae porta. Proin leo dui,'
            'luctus at lobortis vel, sollicitudin eget est. Fusce bibendum'
            'imperdiet odio, vitae eleifend tortor. Mauris eget orci bibendum,'
            'commodo massa non, faucibus lectus. Vivamus at consequat elit.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
          visible: _isClicked,
        )
      ]
    );
  }
}