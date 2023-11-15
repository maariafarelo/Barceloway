import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';

class Maquinista extends StatefulWidget {
  const Maquinista({ Key? key }) : super(key: key);

  @override
  _MaquinistaState createState() => _MaquinistaState();
}

class _MaquinistaState extends State<Maquinista> {
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
              child: Text(' MAQUINISTA '),
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
              child: Image.asset(('assets/maquinista.jpg.JPG'),
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
                            ' Centre comercial la Maquinista (centre comercial) ',
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
                            ' 41.440865096842145, 2.1985624639550077 ',
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
                            ' QUÈ ÉS EL CENTRE COMERCIAL DE LA MAQUINISTA? ',
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
                            'Westfield La Maquinista és un centre comercial situat al carrer de Potosí 2 en el barri barceloní del Bon Pastor del Districte de Sant Andrés, propietat de Unibail-Rodamco-Westfield. El centre va ser inaugurat el 14 de juny de 2000.​ ',
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
                            'Tots els dies de 9:00–21:00, excepte diumenges (TANCAT) ',
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
                            ' Podem trobar un total de 154 botigues, entre elles: Apple , Cinesa, Bershka, Chicco , Decathlon , Fnac, Guess , Hollister , JD ... ',
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