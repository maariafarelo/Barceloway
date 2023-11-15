import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapsPantalla extends StatefulWidget {
  @override
  _GoogleMapsPantallaState createState() => _GoogleMapsPantallaState();
}

class _GoogleMapsPantallaState extends State<GoogleMapsPantalla> {
  Completer<GoogleMapController> controller = Completer();
  List<Marker> markers = [];

  @override
  void initState() {
    initilize();
    super.initState();
  }

  initilize() {
    Marker primerMarker = Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(41.4036299, 2.1743558),
        infoWindow: InfoWindow(
          title: 'La Sagrada Família',
        ));

    Marker segonMarker = Marker(
        markerId: MarkerId('id-2'),
        position: LatLng(41.37623970663619, 2.149345627348256),
        infoWindow: InfoWindow(
          title: 'Centre comercial Arenas',
        ));

    Marker tercerMarker = Marker(
        markerId: MarkerId('id-3'),
        position: LatLng(41.38797293303858, 2.1701699314312592),
        infoWindow: InfoWindow(
          title: 'Passeig de Gràcia',
        ));

    Marker quartMarker = Marker(
        markerId: MarkerId('id-4'),
        position: LatLng(41.440865096842145, 2.1985624639550077),
        infoWindow: InfoWindow(
          title: 'Maquinista',
        ));

    Marker cincMarker = Marker(
        markerId: MarkerId('id-5'),
        position: LatLng(41.41525596889961, 2.1529122681233206),
        infoWindow: InfoWindow(
          title: 'Parc Güell',
        ));

    Marker sisMarker = Marker(
        markerId: MarkerId('id-6'),
        position: LatLng(41.38691878607752, 2.170245581146108),
        infoWindow: InfoWindow(
          title: 'Plaça Catalunya',
        ));

    Marker setMarker = Marker(
        markerId: MarkerId('id-7'),
        position: LatLng(41.37525443724453, 2.182824081942663),
        infoWindow: InfoWindow(
          title: 'Maremagnum',
        ));

    Marker vuitMarker = Marker(
        markerId: MarkerId('id-8'),
        position: LatLng(41.39504918845604, 2.16057462344705),
        infoWindow: InfoWindow(
          title: 'Harrys (Restaurant)',
        ));

    Marker nouMarker = Marker(
        markerId: MarkerId('id-9'),
        position: LatLng(41.38576438350283, 2.1727577265208624),
        infoWindow: InfoWindow(
          title: 'Portal Angel',
        ));

    Marker deuMarker = Marker(
        markerId: MarkerId('id-10'),
        position: LatLng(41.38538688858834, 2.1830675220491838),
        infoWindow: InfoWindow(
          title: 'La Central (Born)',
        ));

    Marker onzeMarker = Marker(
        markerId: MarkerId('id-11'),
        position: LatLng(41.3866869752649, 2.17495070552822),
        infoWindow: InfoWindow(
          title: 'La Central (Laietana)',
        ));

    Marker dotzeMarker = Marker(
        markerId: MarkerId('id-12'),
        position: LatLng(41.396218681484505, 2.1568998641514163),
        infoWindow: InfoWindow(
          title: 'Les Filles Cafè (cafeteria)',
        ));

    Marker tretzeMarker = Marker(
        markerId: MarkerId('id-13'),
        position: LatLng(41.36832012837512, 2.1900605506528104),
        infoWindow: InfoWindow(
          title: 'Wet Deck (terrassa)',
        ));

    markers.add(primerMarker);
    markers.add(segonMarker);
    markers.add(tercerMarker);
    markers.add(quartMarker);
    markers.add(cincMarker);
    markers.add(sisMarker);
    markers.add(setMarker);
    markers.add(vuitMarker);
    markers.add(nouMarker);
    markers.add(deuMarker);
    markers.add(onzeMarker);
    markers.add(dotzeMarker);
    markers.add(tretzeMarker);
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('      MAPA DE BARCELONA'),
      ),
      body: GoogleMap(
        markers: markers.map((e) => e).toSet(),
        initialCameraPosition: CameraPosition(
          target: LatLng(41.4036299, 2.1743558),
          zoom: 12.5,
        ),
      ),
    );
  }
}
