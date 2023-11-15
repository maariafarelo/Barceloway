
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Wetdeck extends StatefulWidget {
  const Wetdeck({Key? key}) : super(key: key);

  @override
  _WetdeckState createState() => _WetdeckState();
}

class _WetdeckState extends State<Wetdeck> {
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
                child: Text(' WETDECK '),
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
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container( child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: ClipRect(
                              child: Image.asset(('assets/wetdeck.JPG'),
                                  fit: BoxFit.cover))),
                    ],
                  ),
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0.0),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: (Text(
                                        '  ',
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        ' Wet Deck (Terrassa)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.deepPurple,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        '41.36832012837512, 2.1900605506528104',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        '  ',
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        '  ',
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        ' QUÈ ÉS EL WET DECK? ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: (Text(
                                        'La terrassa Wet Deck està situada en el famós hotel Vela a Barcelona. El W Barcelona va ser dissenyat per Ricardo Bofill, un arquitecte de renom internacional, i és l´escenari ideal per a una estada inoblidable. Es troba en primera línia de platja, al costat del cèlebre passeig marítim de la Barceloneta. Podem trobar varies terrasses i restuarants al hotel, però aquesta destaca per les seves espectaculars vistes.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        ' HORARIS: ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: (Text(
                                        'De dilluns a divendres : 10:00 a 22:00, de divendres a diumenge: 10:00 a 23:59 (els horaris poden anar variant degut a la situació COVID-19)',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      child: (Text(
                                        ' EXEMPLES DEL QUE OFEREIXEN: ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(20),
                                      child: (Text(
                                        'Cuina internacional, còctels, accés a la terrassa a persones no residents a l´hotel, wifi , música en directe...',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                  ], //Children
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            )) //Container
            ));
  }
}
