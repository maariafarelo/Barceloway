import 'package:flutter/material.dart';
import 'package:flutter_google_map/google_maps_pantalla.dart';
import 'package:flutter_google_map/main.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/rendering.dart';


class IntroBasicScreen extends StatelessWidget {
  const IntroBasicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List <PageViewModel> listPagesViewModel = <PageViewModel> [

      PageViewModel(
            title: "BENVINGUTS A BARCELOWAY!",
            body: "BARCELOWAY és un projecte educatiu creat específicament per al meu TDR, en el qual tracto de demostrar que amb una mica de recerca, qualsevol persona és capaç d'aprendre a programar una app en un llenguatge completament nou.",
            image: Center(child: Image.asset("assets/image.png.PNG",
                               width: 300.0,
                               height: 301.8,
                               fit: BoxFit.cover,)),
            decoration: const PageDecoration(
              pageColor: Colors.deepPurple,
            ),
          ),

      PageViewModel(
            title: "EL FUNCIONAMENT",
            body: "Has anat a passar el dia a Barcelona i no has sabut on anar? Barceloway és la app perfecta per a tu. Aquesta app et mostra una selecció de 13 llocs per a gaudir del teu dia a Barcelona, i un mapa amb les seves ubicacions (clica al pin de l'AppBar per a veure'l).",
            image: Center(child: Image.asset("assets/pin.png.PNG",
                               width: 300.0,
                               height: 301.8,
                               fit: BoxFit.cover,)),
            decoration: const PageDecoration(
              pageColor: Colors.blue,
            ),
          ),


        PageViewModel(
            title: "ACCEDEIX A LA APP",
            body: "Clica al botó de sota per a accedir a BARCELOWAY ",
             image: Center(child: Image.asset("assets/sfami.png.PNG",
                               width: 300.0,
                               height: 301.8,
                               fit: BoxFit.cover,)),
            decoration: const PageDecoration(
              pageColor: Colors.purple , 
            ),
            footer: ElevatedButton(
              onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PagPrincipal())),
                // On button presed
              
                  child: const Text("Som-hi!"),
                ),
             ),
          ];

    return IntroductionScreen(
      pages: listPagesViewModel,
      done: const Text("MAPA DE BARCELONA", style: TextStyle(fontWeight: FontWeight.w600)),
      onDone: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GoogleMapsPantalla())),
      next: Icon(Icons.navigate_next),
    ); //Material App;
  }
}
