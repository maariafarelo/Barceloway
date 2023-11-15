import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/angel.dart';
import 'package:flutter_google_map/arenas.dart';

import 'package:flutter_google_map/google_maps_pantalla.dart';
import 'package:flutter_google_map/maquinista.dart';
import 'package:flutter_google_map/pgracia.dart';

class Botigues extends StatefulWidget {
  const Botigues({Key? key}) : super(key: key);

  @override
  _BotiguesState createState() => _BotiguesState();
}

class _BotiguesState extends State<Botigues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple.shade300,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(' BOTIGUES'),
              ),
              IconButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GoogleMapsPantalla())),
                  icon: Image.asset('assets/pin.png.PNG')),
            ],
          ),
        ),
        body: Container(
            child: Column(children: <Widget>[
          Text(
            '         ',
          ),
          Text(
            ' '
          ),
          Text(
            '      - LES BOTIGUES QUE RECOMANEM - ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontStyle: FontStyle.normal,
            ),
          ),
          Text(
            '         ',
          ),
          Container(
            child: Text('       '),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(children: [
                      Container(
                        child: Text('       '),
                      ),
                      Container(
                        child: Text('       '),
                      ),
                      ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Angel())),
                          child: Text(
                            "Portal de l'àngel",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Arenas())),
                          child: Text(
                            "Centre comercial Arenas",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Pgracia())),
                          child: Text(
                            "Passeig de gràcia",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Maquinista())),
                          child: Text(
                            "Maquinista",
                            style: TextStyle(color: Colors.white),
                          )),
                    ]),
                  ),
                ]),
          ),
          Container(
            child: Text('     '),
          ),

          Container(
              child: Column(children: <Widget>[
                CarouselSlider(
                  items: [
                    
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/pasgrac.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/angel.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/arenas.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                     Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/maquinista.jpg.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                  ],
                  options: CarouselOptions(
                    height: 375.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        Duration(milliseconds: Duration.microsecondsPerMillisecond),
                    viewportFraction: 0.8,
                  ),
                )
              ]
              ),
            )
        ]
        )
        )
        );
  }
}
