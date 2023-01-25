// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:derma_masjid/home_page.dart';
import 'package:derma_masjid/mainpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pay extends StatelessWidget {
  int currentIndex = 0;

  Pay({super.key});
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
                    padding:
                        EdgeInsets.symmetric(vertical: 140, horizontal: 130),
                    child: Text(
                      'Infak Masjid',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arial black',
                        fontSize: 26,
                      ),
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 250, horizontal: 5),
              child: Text(
                'Nama',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 300, horizontal: 5),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Name'),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(children: [
                    Text(
                      'Phone Number',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter Your Phone Number'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Dengan Ini Saya Berinfak Kepada Masjid UMT',
                    style: TextStyle(fontSize: 23, color: Colors.green),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 20)),
                    child: Text('Derma', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => mainpage()));
                    },
                  )
                ]))
          ],
        ),
      ),
    )));
  }
}
