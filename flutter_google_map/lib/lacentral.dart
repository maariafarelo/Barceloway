import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class LaCentral extends StatefulWidget {
  const LaCentral({Key? key}) : super(key: key);

  @override
  _LaCentralState createState() => _LaCentralState();
}

class _LaCentralState extends State<LaCentral> {
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
                child: Text(' LA CENTRAL'),
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
            child: Container(
                child: SingleChildScrollView(
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
                              child: Image.asset(('assets/lacentral.JPG'),
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
                                        ' La Central (Restaurant)',
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
                                        '41.38538688858834, 2.1830675220491838 i 41.3866869752649, 2.17495070552822',
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
                                        ' QUÈ ÉS LA CENTRAL? ',
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
                                        'El restaurant La Central és una hamburgueseria d´ambient vintage que ofereix menús personalitzats d´hamburgueses de molts tipus. N.º 26 dels 143 bars de menjar ràpid a Barcelona (Tripadvisor)',
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
                                        'Tots els dies de 12:30 - 16:00 i 19:30 - 00:00 ',
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
                                        '7 € - 11 € de mitja, cuina americana - Internacional, opcions vegetarianes, opciones veganes, opciones sense gluten...',
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
                            ]
                            ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ) //Container
         ) //Padding
       ); //Scaffold
  }
}
