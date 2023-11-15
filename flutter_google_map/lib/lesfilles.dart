import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Lesfilles extends StatefulWidget {
  const Lesfilles({ Key? key }) : super(key: key);

  @override
  _LesfillesState createState() => _LesfillesState();
}

class _LesfillesState extends State<Lesfilles> {
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
              child: Text(' LES FILLES CAFÈ'),
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
                              child: Image.asset(('assets/lesfilles.JPG'),
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
                                        ' Les Filles Cafè (cafeteria)',
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
                                        '41.396218681484505, 2.1568998641514163',
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
                                        ' QUÈ ÉS LES FILLES? ',
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
                                        'Restaurant modern amb terrassa, que serveix tapes i plats saludables, a més de brunches i begudes artesanals els caps de setmana.',
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
                                        'Dilluns de 13.00 a 17.00, dimarts a dijous de 13.00 a 23.00, divendres i dissabte d´11.00 a 23.00, i diumenge d´11.00 a 17.00',
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
                                        'Cafès, refrescs ecològics, postres, plats ecològics i vegans, torrades, hamburgueses, amanides , plats per compartir...',
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
         ) 
    );
  }
}