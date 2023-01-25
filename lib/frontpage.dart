import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'derma.dart';
//import 'package:url_launcher/url_launcher.dart';

class HomeUMT extends StatefulWidget {
  @override
  _HomeUMTState createState() => _HomeUMTState();
}

class _HomeUMTState extends State<HomeUMT> {
  final List<Map> myFoodPopular = [
    {
      "imagePopular": "assets/images/nasi-goreng.jpg",
      "namePopular": "Derma RM 5 ",
      "ratingPopular": "4012"
    },
    {
      "imagePopular": "assets/images/rendang.jpg",
      "namePopular": "Daging Rendang Padang",
      "ratingPopular": "2009"
    },
  ];

  final List<Map> myItems = [
    //ambik api JAKIM
    {
      "svgImage": "assets/images/emojione-monotone_green-salad.svg",
      "nameMenu": "Subuh",
      "countData": "05:54"
    },
    {
      "svgImage": "assets/images/emojione-monotone_pot-of-food.svg",
      "nameMenu": "Zohor",
      "countData": "13.05"
    },
    {
      "svgImage": "assets/images/emojione-monotone_ice-cream.svg",
      "nameMenu": "Asar",
      "countData": "16:20"
    },

    {
      "svgImage": "assets/images/emojione-monotone_ice-cream.svg",
      "nameMenu": "Magrib",
      "countData": "17.16"
    },
    {
      "svgImage": "assets/images/emojione-monotone_ice-cream.svg",
      "nameMenu": "Isyak",
      "countData": "20.16"
    }
  ];
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    DermaMasjid(),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    DermaMasjid(),
  ];

  //final List<Widget> _children  =[Senaraiaduan(), Mohonsimple(),Info(),Contact()  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      print(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffF0F3FF),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.grey,
            selectedItemColor: Color(0xff3267E3),
            selectedFontSize: 14,
            unselectedFontSize: 14,
            elevation: 0,
            items: [
              BottomNavigationBarItem(
                label: "Home",
                icon: Icon(Icons.home_outlined),
              ),
              BottomNavigationBarItem(
                label: "Panduan",
                icon: Icon(Icons.paste_outlined),
              ),
              BottomNavigationBarItem(
                label: "Derma",
                icon: Icon(Icons.brightness_6_outlined),
              ),
            ],
            currentIndex: _selectedIndex,
            //selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Stack(children: <Widget>[
                    new Image.asset(
                      'Image/masjidumt.jpg',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Selamat Datang',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Pusat Islam Sultan Mahmud UMT',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: 10),
                          ],
                        )),
                  ]),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Container(),
                      const SizedBox(
                        width: 5,
                      ),
                      /*const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                        AssetImage('Image/Mosque.png'),
                      ),*/
                      Expanded(
                        child: Container(),
                      ),
                      /*CircleAvatar(
                        backgroundColor: Color(0xffD7E6FD),
                        radius: 30.0,
                        child: IconButton(
                          splashColor: Colors.white.withOpacity(0),
                          iconSize: 30.0,
                          onPressed: () {},
                          icon: Icon(Icons.search),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.zero,
                        ),
                      ),*/
                      const SizedBox(
                        width: 5,
                      ),
                      /*CircleAvatar(
                        backgroundColor: Color(0xffD7E6FD),
                        radius: 30.0,
                        child: IconButton(
                          splashColor: Colors.white.withOpacity(0),
                          iconSize: 30.0,
                          onPressed: () {},
                          icon: Icon(Icons.notifications_none),
                          color: Theme.of(context).primaryColor,
                          padding: EdgeInsets.zero,
                        ),
                      ),*/
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 120,
                    child: GridView.count(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      crossAxisCount: 5,
                      children: myItems
                          .map((item) => Container(
                                margin: EdgeInsets.all(5),
                                padding: EdgeInsets.all(10),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    /*
                            Expanded(
                              child: Container(),
                            ),*/
                                    Text(
                                      item['nameMenu'],
                                      style: TextStyle(
                                        color: Color(0xff082431),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      item['countData'],
                                      style: TextStyle(
                                        color: Color(0xffA2ADB1),
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' INFAK TABUNG MASJID',
                        style: TextStyle(
                          color: Color(0xff082431),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      /*Text(
                        'Show all',
                        style: TextStyle(
                          color: Color(0xff006EEE),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),*/
                    ],
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: myFoodPopular
                          .map(
                            (popular) => SizedBox(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: GridTile(
                                    child: Image.asset(
                                      popular['imagePopular'],
                                      fit: BoxFit.cover,
                                    ),
                                    footer: SizedBox(
                                      height: 70,
                                      child: GridTileBar(
                                        backgroundColor: Colors.white,
                                        title: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                popular['namePopular'],
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff082431),
                                                ),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: myFoodPopular
                          .map(
                            (popular) => SizedBox(
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 0,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: GridTile(
                                    child: Image.asset(
                                      popular['imagePopular'],
                                      fit: BoxFit.cover,
                                    ),
                                    footer: SizedBox(
                                      height: 70,
                                      child: GridTileBar(
                                        backgroundColor: Colors.white,
                                        title: Padding(
                                          padding: const EdgeInsets.only(
                                              top: 5, bottom: 5),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                popular['namePopular'],
                                                maxLines: 2,
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xff082431),
                                                ),
                                              ),
                                              Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                  Icon(
                                                    Icons.star_outlined,
                                                    color: Color(0xffFFBC58),
                                                    size: 18,
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
