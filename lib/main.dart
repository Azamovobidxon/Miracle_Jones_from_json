import 'dart:convert';
import 'users_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:second_project_dummy/users_model.dart';

void main() async {
  String baseUrl = "https://dummyjson.com/users/11";

  Uri uri = Uri.parse(baseUrl);

  Response response = await get(uri);

  Users users = Users.fromJson(jsonDecode(response.body));

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Marcle Jones",
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("${users.firstName} ${users.lastName}"),
          backgroundColor: Colors.lightBlueAccent,
        ),
      body: Center(
        child: Image(
          image: NetworkImage("${users.image}"),
          width: 300,
          height: 300,

        ),
      ),
      ),
    ),
  );
}
