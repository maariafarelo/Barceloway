import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Maremagnum extends StatefulWidget {
  const Maremagnum({ Key? key }) : super(key: key);

  @override
  _MaremagnumState createState() => _MaremagnumState();
}

class _MaremagnumState extends State<Maremagnum> {
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
              child: Text(' MAREMAGNUM '),
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
              child: Image.asset(('assets/maremagnum.JPG'),
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
                            ' Maremagnum     (centre comercial) ',
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
                            ' 41.37525443724453, 2.182824081942663 ',
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
                            ' QUÈ ÉS EL MAREMAGNUM? ',
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
                            'Tot i que el Maremagnum és un centre comercial, he decidit ubicar-ho aquí degut a que considero que el Maremagnum és molt més conegut com a una zona que  no  pas com a centre comercial. Per a ser més concreta, el Maremagnum està situada al costat de la Barceloneta, per tant, és una zona ideal per a anar a pasar la tarda degut a la varietat  d´opcions de plans. ',
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
                            'Tots els dies de 10:00 a 22:00 ',
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