import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:moda_tasrimm_uygulamasi/detay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          indicatorColor: Colors.brown,
          controller: tabController,
          tabs: [
            Tab(
              icon: Icon(
                Icons.more,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_arrow,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.navigation,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.supervised_user_circle,
                color: Colors.grey,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Moda Uygulamasi",
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 10),
        children: <Widget>[
          // üst taraftaki profil listesi
          Container(
            //color: Colors.blue.shade300, widgetlerın boyutunu daha iyi anlamak için
            height: 140,
            width: double.infinity, //heryere yayaılsın diye
            child: ListView(
              padding: EdgeInsets.all(10),
              scrollDirection: Axis
                  .horizontal, //listview yukarıdan aşağı normalde yatay yapıyoruz
              children: <Widget>[
                ListElamani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListElamani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListElamani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
                ListElamani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListElamani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                SizedBox(
                  width: 30,
                ),
                ListElamani('assets/model3.jpeg', 'assets/chloelogo.png'),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ),
          //  Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              //color: Colors.blue.shade300,
              child: Container(
                height: 500,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment
                                .start, //yazılarin fotonun yanından başlaması için
                            children: <Widget>[
                              Text(
                                'Daisy',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '34 mins ago',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'This offical Website features a ribbed knit zipper jacket that is modern and stylish. It looks very temparament and is recommend to friends',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          //resme tıklayınca resmi yeni sayfada açma
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Detay(
                                      imgPath: 'assets/modelgrid1.jpeg',
                                    )));
                          },
                          child: Hero(
                            // ınkwel için efect
                            tag: 'assets/modelgrid1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        'assets/modelgrid1.jpeg',
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid2.jpeg',
                                        )));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid2.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/modelgrid2.jpeg',
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid3.jpeg',
                                        )));
                              },
                              child: Hero(
                                tag: 'assets/modelgrid3.jpeg',
                                child: Container(
                                  height: 95,
                                  width: (MediaQuery.of(context).size.width -
                                          100) /
                                      2,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            'assets/modelgrid3.jpeg',
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Louis Vuitton',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.brown.withOpacity(0.2),
                          ),
                          child: Center(
                            child: Text(
                              '# Chloe',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.brown,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(color: Colors.black38),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.reply,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '1.7k',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.comment,
                          color: Colors.brown.withOpacity(0.2),
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '325',
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 235,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '2.3K',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ListElamani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(38),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.contain),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: Center(
            child: Text('Follow',
                style: TextStyle(fontSize: 14, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
