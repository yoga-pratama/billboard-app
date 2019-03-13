import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-6.21462, 106.84513),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  static final contentColumn = Column(
    children: <Widget>[
      Text("Test"),
    ],
  );

  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    var mapHeight = MediaQuery.of(context).size.height / 2;
   
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 20, left: 10),
          child: Text(
            "Our Location",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: DropdownButton<String>(
            iconSize: 20,
            isExpanded: true,
            value: dropdownValue,
            onChanged: (String newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
          Container(
          height: mapHeight,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            compassEnabled: true,
            onMapCreated: (GoogleMapController controller) {},
          ),
        ),
      ],
    );
  }
}
