import 'package:derma_masjid/home_page.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:derma_masjid/Aktiviti.dart';
import 'package:derma_masjid/Contact.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  _mainpageState createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List pages = [Contact(), HomePage(), Aktiviti()];

  int currentIndex = 1;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        iconSize: 30,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.phone),
              label: 'Contact',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green),
          BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Aktiviti',
              backgroundColor: Colors.green)
        ],
      ),
    );
  }
}
