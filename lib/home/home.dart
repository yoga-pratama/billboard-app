import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatefulWidget{
 
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage  extends State<HomePage>{
  Completer<GoogleMapController> _controller = Completer();

  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return Container(
        alignment: Alignment.center,
        child: Text("test"),
      );
  }


}
