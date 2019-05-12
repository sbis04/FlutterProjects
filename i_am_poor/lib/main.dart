import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green[500],
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('I Am Poor'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Image(
              image: AssetImage('images/one_dollar.jpg'),
            ),
          ),
        ),
      ),
    )
  );
}