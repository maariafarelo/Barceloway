import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';
import 'package:flutter_google_map/guell.dart';
import 'package:flutter_google_map/maremagnum.dart';
import 'package:flutter_google_map/plazacat.dart';
import 'package:flutter_google_map/sfami.dart';



class Cultura extends StatefulWidget {
  const Cultura({ Key? key }) : super(key: key);

  @override
  _CulturaState createState() => _CulturaState();
}

class _CulturaState extends State<Cultura> {
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
              child: Text('ESPAIS CULTURALS'),
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
        child: Column(
          children: <Widget>[
            Text(
              '         ',
            ),
            Text(
              '         ',
            ),
            Text(
              '      - ESPAIS CULTURALS I SOCIALS  - ',
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
                                  builder: (context) => Guell())),
                          child: Text(
                            "Parc Güell",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlazaCat())),
                          child: Text(
                            "Plaça catalunya",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Maremagnum())),
                          child: Text(
                            "Maremagnum",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Sfami())),
                          child: Text(
                            "Sagrada Família",
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
                          image: AssetImage('assets/sagrfami.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/guell.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/plazacat.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/maremagnum.JPG'),
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
