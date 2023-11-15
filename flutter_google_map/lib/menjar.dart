import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';
import 'package:flutter_google_map/harrys.dart';
import 'package:flutter_google_map/lacentral.dart';
import 'package:flutter_google_map/lesfilles.dart';
import 'package:flutter_google_map/wetdeck.dart';



class Menjar extends StatefulWidget {
  const Menjar({ Key? key }) : super(key: key);

  @override
  _MenjarState createState() => _MenjarState();
}

class _MenjarState extends State<Menjar> {
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
              child: Text(' RESTAURACIÓ '),
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
              '       - ELS LLOCS QUE RECOMANEM - ',
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
                                  builder: (context) => Harrys())),
                          child: Text(
                            "Harry's",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LaCentral())),
                          child: Text(
                            "La central",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>Lesfilles())),
                          child: Text(
                            "Les filles",
                            style: TextStyle(color: Colors.white),
                          )),
                          ElevatedButton(
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Wetdeck())),
                          child: Text(
                            "Wet Deck",
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
                          image: AssetImage('assets/harrys.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/lacentral.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/lesfilles.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage('assets/wetdeck.JPG'),
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
