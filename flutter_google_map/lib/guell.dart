import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Guell extends StatefulWidget {
  const Guell({ Key? key }) : super(key: key);

  @override
  _GuellState createState() => _GuellState();
}

class _GuellState extends State<Guell> {
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
              child: Text(' PARC GÜELL'),
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
              child: Image.asset(('assets/guell.JPG'),
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
                            ' Parc Güell (parc públic) ',
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
                            ' 41.41525596889961, 2.1529122681233206',
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
                            ' QUÈ ÉS EL PARC GÜELL? ',
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
                            'El parc Güell és un parc públic amb jardins i elements arquitectònics situat en la part superior de la ciutat de Barcelona (Espanya), en els contraforts de la serra de Collserola. El parc es troba en el vessant sud de la muntanya Carmelo (barri de la Salut, en el districte de Gràcia) i confrontant al vessant nord on es troba el parc del Carmelo (barri del Carmelo, del districte de Horta-Guinardó). Ideat com a urbanització, el parc va ser dissenyat per l´arquitecte Antoni Gaudí, màxim exponent del modernisme català, per encàrrec de l´empresari Eusebi Güell. Construït entre 1900 i 1914, va ser inaugurat com a parc públic en 1926.',
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
                            ' HORARIS: ',
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
                            'Tots els dies de 9:30 a 19:30 ',
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