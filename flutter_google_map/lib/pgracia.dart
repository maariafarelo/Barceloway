import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Pgracia extends StatefulWidget {
  const Pgracia({ Key? key }) : super(key: key);

  @override
  _PgraciaState createState() => _PgraciaState();
}

class _PgraciaState extends State<Pgracia> {
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
              child: Text(' PASSEIG DE GRÀCIA '),
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
      body:Padding (
        padding: const EdgeInsets.all(8.0),
        child: 
        Container(
        child: SingleChildScrollView (
        child: Column(
        children: <Widget>[
          Stack(children: [
            Container(height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0,2.0),
                  blurRadius: 6.0,
                ),],
             ),
             child: ClipRect(
              child: Image.asset(('assets/pasgrac.JPG'),
              fit:BoxFit.cover
             )
             )
             ),
          ],
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment(0.0,0.0),
              
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container (
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container (
                        child: (
                          Text(
                            '  ',)               
                      ),
                      ),
                      Container(
                        child: (
                          Text(
                            'Passeig de Gràcia (avinguda) ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                      Container(
                        child: (
                          Text(
                            ' 41.38797293303858, 2.1701699314312592',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),

                      Container( child: ( Text( '  ', )   ), ),
                      Container( child: ( Text( '  ', )   ), ),

                      Container(
                        child: (
                          Text(
                            ' QUÈ ÉS EL PASSEIG DE GRÀCIA? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: (
                          Text(
                            ' El passeig de Gràcia és una de les avingudes principals de Barcelona i de les més famoses de Catalunya, a causa de la seva importància turística, àrees comercials, negocis i un gran aparador de destacades obres d´arquitectura modernista, com les edificacions dels arquitectes Antoni Gaudí i Lluís Domènech i Montaner, declarades Patrimoni de la Humanitat. L´avinguda està situada en la part central de la ciutat, l´Eixample barceloní, i connecta la plaça de Catalunya a l´est amb el carrer Major de Gràcia a l´oest.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                      Container(
                        child: (
                          Text(
                            ' QUÈ HI PODEM TROBAR ALLÀ? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                       Container(
                        padding: EdgeInsets.all(20),
                        child: (
                          Text(
                            ' Podem trobar els famosos jardins del passeig, com per exemple: el jardí del Tívoli, el jardí del Criader, el jardí de la Ninfa...',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                      Container(
                        child: (
                          Text(
                            ' QUINES BOTIGUES PODEM TROBAR ALLÀ? ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                       Container(
                        padding: EdgeInsets.all(20),
                        child: (
                          Text(
                            'Al passeig de Gràcia es reuneixen les grans marques, siguent el carrer de Barcelona que alberga un major nombre de botigues de luxe, concentrant gran part de les vendes     d´aquest sector a Espanya.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          )   
                      ),
                      ),
                    ],
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
      )
      )
    );
  }
}