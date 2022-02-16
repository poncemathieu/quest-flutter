import 'package:flutter/material.dart';

class Home extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFF5252),
          title: Text('Wildstagram'),
        ),
        body: Container(
          color: Color(0xFFF76C6C),
          child: Center(
            child: Text(
              'Welcome on Wildstagram',
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    }
  }