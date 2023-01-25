import 'package:derma_masjid/pay.dart';
import 'package:flutter/material.dart';
import 'package:derma_masjid/Aktiviti.dart';
import 'package:derma_masjid/Contact.dart';
import 'package:derma_masjid/models/ayat.dart';
import 'package:derma_masjid/services/api_services.dart';
import 'package:derma_masjid/services/ayat2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiServices _apiServices = ApiServices();

  List pages = [
    Contact(),
    Aktiviti(),
    Pay(),
  ];

  int currentIndex = 0;
  final screen = [];

  final List<Map> Derma = [
    {
      "imagePopular": "image/rm1.jpg",
      "namePopular": "Derma RM 1 ",
    },
    {
      "imagePopular": "image/rm5.jpg",
      "namePopular": "Derma RM 5",
    },
    {
      "imagePopular": "image/rm10.jpg",
      "namePopular": "Derma RM 10",
    },
    {
      "imagePopular": "image/rm50.jpg",
      "namePopular": "Derma RM 50",
    },
    {
      "imagePopular": "image/ramadan.png",
      "namePopular": "Derma  Ramadhan",
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
  @override
  Widget build(BuildContext context) {
    return Container(
        child: SafeArea(
            child: Scaffold(
                body: SingleChildScrollView(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('image/masjid.jpg'), fit: BoxFit.cover),
          ),
          height: 700,
          width: 700,
        ),
        Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 50),
            child: Text(
              'Selamat Datang Ke Pusat Islam Sultan Mahmud UMT',
              style: TextStyle(
                color: Colors.green,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial black',
                fontSize: 25,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
          Stack(children: [
            Padding(
              padding: EdgeInsets.all(3),
              child: new Image.asset('image/masjidumt.jpg', fit: BoxFit.cover),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Terengganu',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 80, horizontal: 5),
                      child: SizedBox(
                        child: GridView.count(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          crossAxisCount: 5,
                          children: myItems
                              .map((item) => Container(
                                    margin: EdgeInsets.all(5),
                                    padding: EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          item['nameMenu'],
                                          style: TextStyle(
                                            color: Color(0xff082431),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
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
                    ),
                  ]),
            ),
          ]),

          Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Container(),
            Expanded(
                child: SingleChildScrollView(
              padding: EdgeInsetsDirectional.only(top: 10, bottom: 20),
              child: Column(
                children: [
                  FutureBuilder<ayatoftheday>(
                    future: _apiServices.get2(),
                    builder: ((context, snapshot) {
                      if (snapshot.data == null) {
                        print('jjjj');
                        print(snapshot.data);
                        return Container();
                      } else {
                        return Text('test');
                      }
                      //builder: ((context, snapshot) {
                      /*  if (snapshot.data == null) {
                        print(snapshot.data);
                      } */

                      /*switch (snapshot.connectionState) {
                        case ConnectionState.none:
                          return Icon(Icons.sync_problem);
                        case ConnectionState.waiting:
                        case ConnectionState.active:
                          return CircularProgressIndicator();
                        case ConnectionState.done:
                          print(snapshot.data);
                          return Container(
                            margin: EdgeInsetsDirectional.all(16),
                            padding: EdgeInsetsDirectional.all(20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 1),
                                  )
                                ]),
                            child: Column(
                              children: [
                                Text(
                                  "Ayat Harian",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 0.5,
                                ),
                                Text(
                                  'test',
                                  // snapshot.data!.arText!,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                                Text(
                                  'test',
                                  //snapshot.data!.enTran!,
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 18),
                                ),
                                /* RichText(
                                    text: TextSpan(children: <InlineSpan>[
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        snapshot.data!.surNumber!.toString(),
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  WidgetSpan(
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(snapshot.data!.surEnName!,
                                          style: TextStyle(fontSize: 16)),
                                    ),
                                  ),
                                ])), */
                              ],
                            ),
                          );
                      }*/
                    }),
                  ),
                ],
              ),
            )),
            SizedBox(
              height: 30,
            ), /*
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ' Infak Tabung Masjid',
                      style: TextStyle(
                        color: Color(0xff082431),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  child: GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: Derma.map(
                      (popular) => SizedBox(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: GridTile(
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) => Pay())));
                                },
                                child: Image.asset(
                                  popular['imagePopular'],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ).toList(),
                  ),
                ),
              ],
            ),*/
          ]),
          //]
        ]),
      ]),
    ))));
  }
}
