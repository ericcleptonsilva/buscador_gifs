import 'package:buscador_de_gifs/ui/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
        hintColor: Colors.amberAccent,
        primaryColor: Colors.amberAccent,
        inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amberAccent),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.amberAccent),
            ),
            helperStyle: TextStyle(color: Colors.amberAccent))),
    debugShowCheckedModeBanner: false,
  ));
}
