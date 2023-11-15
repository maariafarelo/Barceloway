import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/botigues.dart';
import 'package:flutter_google_map/cultura.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';
import 'package:flutter_google_map/menjar.dart';
import 'intro_basic_screen.dart';

class PagPrincipal extends StatefulWidget {
  @override
  _PagPrincipalState createState() => _PagPrincipalState();
}

class _PagPrincipalState extends State<PagPrincipal> {
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
              child: Text(' BARCELOWAY'),
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
              '  - LES NOSTRES CATEGORIES: - ',
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
              height: 290.0,
              margin: EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.deepPurple.shade300,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
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
                                    builder: (context) => Botigues())),
                            child: Text(
                              "Botigues",
                              style: TextStyle(color: Colors.white),
                            )),
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cultura())),
                            child: Text(
                              "Espais culturals ",
                              style: TextStyle(color: Colors.white),
                            )),
                        ElevatedButton(
                            onPressed: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Menjar())),
                            child: Text(
                              "Restauració",
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.deepPurple.shade300,
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(''),
                        ),
                        Image.asset('assets/logo2.png.PNG'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Text(
              '         ',
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
                          image: AssetImage('assets/b2n.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
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
                          image: AssetImage('assets/rambla.JPG'),
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
                          image: AssetImage('assets/guell.JPG'),
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
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Barceloway',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: IntroBasicScreen(),
    );
  }
}
