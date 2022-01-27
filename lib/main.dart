import 'package:flutter/material.dart';
import 'package:star_wars/util/route_generator.dart';
import 'package:star_wars/view/home.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Personagens Star Wars',
      initialRoute: RouteGenerator.home,
      onGenerateRoute: RouteGenerator.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home()));
}
