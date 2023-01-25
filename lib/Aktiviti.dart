// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aktiviti extends StatelessWidget {
  int currentIndex = 0;

  Aktiviti({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
                    child: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/masjid.jpg'), fit: BoxFit.cover),
          ),
          height: 700,
          width: 700,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 150),
                child: Text(
                  'AKTIVITI',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial black',
                    fontSize: 24,
                  ),
                )),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 220, horizontal: 5),
          child: Container(
            color: Colors.white,
            height: 500,
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.amber[600],
                  child: const Center(child: Text('Entry A')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[500],
                  child: const Center(child: Text('Entry B')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[400],
                  child: const Center(child: Text('Entry C')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[300],
                  child: const Center(child: Text('Entry D')),
                ),
                Container(
                  height: 50,
                  color: Colors.amber[100],
                  child: const Center(child: Text('Entry E')),
                ),
              ],
            ),
          ),
        ),
      ],
    )))));
  }
}
