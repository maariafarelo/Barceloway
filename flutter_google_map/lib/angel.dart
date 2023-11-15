import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Angel extends StatefulWidget {
  const Angel({Key? key}) : super(key: key);

  @override
  _AngelState createState() => _AngelState();
}

class _AngelState extends State<Angel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 39, 29, 57),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(15.0),
                child: Text(' PORTAL DE L´ÀNGEL '),
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
                              child: Image.asset(('assets/angel.JPG'),
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
                                        ' El portal de l´àngel (carrer) ',
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
                                        '41.38576438350283, 2.1727577265208624 ',
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
                                        ' QUÈ ÉS EL PORTAL DE L´ÀNGEL? ',
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
                                        ' La Avinguda del portal de l´Àngel és una via per als vianants de Barcelona famosa per reunir un gran nombre     d´establiments comercials. És famosa per la presència de moltes botigues, com El Corte Inglés i altres franquícies internacionals, sobretot de moda, així com establiments de menjar ràpid. En aquesta avinguda és habitual trobar gent fent algun espectacle per a guanyar una mica de diners, ja sigui ballar, tocar algun instrument, etc. encara que on sobretot predominen aquestes activitats és en Les Rambles. ',
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
                                        ' QUÈ HI PODEM TROBAR ALLÀ? ',
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
                                        ' Podem trobar botigues com: Disney, Desigual, H&M , Adidas, Bershka, Mango, Swarovski ... ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      )
                    ],
                  ),
                ],
              ),
            ))));
  }
}
