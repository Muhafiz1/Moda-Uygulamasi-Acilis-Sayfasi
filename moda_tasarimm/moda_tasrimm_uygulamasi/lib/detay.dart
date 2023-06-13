import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Detay extends StatefulWidget {
  //const Detay({super.key});

  var imgPath;
  Detay({this.imgPath, super.key});

  @override
  State<Detay> createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: widget.imgPath,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover),
                )),
          ),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              borderRadius: BorderRadius.circular(10),
              elevation: 4,
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: 120,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.grey),
                              image: DecorationImage(
                                  image: AssetImage('assets/dress.jpg'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'LAMİNATED',
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Louis vuitton',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: MediaQuery.of(context).size.width - 170,
                              child: Text(
                                'One button V-neck sling long-sleeved female stitching dress',
                                style:
                                    TextStyle(fontSize: 13, color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15, top: 10, bottom: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '\$6500',
                            style: TextStyle(fontSize: 22),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 20),
                            child: FloatingActionButton(
                              onPressed: () {},
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                              backgroundColor: Colors.brown,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
