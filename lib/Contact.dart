// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  int currentIndex = 0;
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
                padding: EdgeInsets.symmetric(vertical: 100, horizontal: 5),
                child: Text(
                  'HUBUNGI KAMI',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arial black',
                    fontSize: 24,
                  ),
                )),
            Container(
                color: const Color(0xffffffff), // white
                height: 200.0,
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    const Text(
                      'PUSAT ISLAM SULTAN MAHMUD',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    const Text(
                      'UNIVERSITI MALAYSIA TERENGGANU',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    const Text(
                      '21030 KUALA NERUS',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    const Text(
                      'TERENGGANU, MALAYSIA.',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    const Text(
                      'TEL:09-6684462',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    const Text(
                      'FAKS:09-6684909',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    Text(
                      'EMAIL:pusat.islam@umt.edu.my',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ],
                )),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('image/maps.png'), fit: BoxFit.cover),
              ),
              height: 500,
              width: 500,
            ),
          ],
        ),
      ],
    )))));
  }
}
