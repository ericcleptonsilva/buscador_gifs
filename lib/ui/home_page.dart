import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _search;
  int _offset = 0;
  _getGifs() async {
    http.Response response;
    if (_search == null)
      response = await http.get(
          "https://api.giphy.com/v1/gifs/trending?api_key=Bw5uuAnr1PfG4ivVEvo4qMmxsliENL74&limit=25&rating=g");
    else
      response = await http.get(
          "https://api.giphy.com/v1/gifs/search?api_key=Bw5uuAnr1PfG4ivVEvo4qMmxsliENL74&q=$_search&limit=25&offset=$_offset&rating=g&lang=en");
    return json.decode(response.body);
  }

  @override
  void initState() {
    super.initState();
    _getGifs().then((map) {
      print(map);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Buscador de Gifs",
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 25,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
