import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sqflite/sqflite.dart';

void main()=>runApp(MainApp());

class MainApp extends StatefulWidget {
  @override
  createState() => _MainAppState();
}

class _MainAppState extends State<MainApp>{
  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(45.521563, -122.677433),
              //zoom: 11.0,
            ),
        ),
        appBar: AppBar(
          title: Text('LocoRem'),
          backgroundColor: Colors.blueGrey[900],),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.lightBlue[800],
          child: Icon(Icons.add_location),),
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[Icon(Icons.list), Container(height: 40, width: 0,), Icon(Icons.settings)],
              ),
            ),
        ),
      theme: new ThemeData(accentColor: Colors.blueGrey[900]),
    );
  }
}