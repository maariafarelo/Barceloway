import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class PlazaCat extends StatefulWidget {
  const PlazaCat({ Key? key }) : super(key: key);

  @override
  _PlazaCatState createState() => _PlazaCatState();
}

class _PlazaCatState extends State<PlazaCat> {
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
              child: Text(' PLAÇA CATALUNYA '),
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
              child: Image.asset(('assets/plazacat.JPG'),
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
                            ' Plaça Catalunya      (plaça pública) ',
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
                            '41.38691878607752, 2.170245581146108',
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
                            ' QUÈ ÉS LA PLAÇA CATALUNYA? ',
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
                            'La plaça de Catalunya és una cèntrica plaça de Barcelona, un dels centres neuràlgics de la ciutat. Té una superfície de 5 hectàrees.Constitueix el punt d´unió entre el nucli vell de la ciutat i l´Eixample. D´aquí parteixen importants vies de la ciutat com la Rambla, el passeig de Gràcia, la rambla de Catalunya o les rondes de la Universitat i de Sant Pere, i el carrer de Pelayo, així com l´avinguda de Portal de l´Àngel, la gran artèria comercial de la ciutat, i antiga porta de les muralles.',
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