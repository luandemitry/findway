import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const primaryColor = Color(0xFFf345e2);

class PaginaCasas4 extends StatefulWidget {
  const PaginaCasas4({Key? key}) : super(key: key);

  @override
  State<PaginaCasas4> createState() => _PaginaCasas4State();
}

class _PaginaCasas4State extends State<PaginaCasas4> {
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(-12.177791, -38.413255), zoom: 11.5);

   late GoogleMapController _googleMapController;

  @override
  void dispose(){
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: (controller)=> _googleMapController = controller,
      ),
    );
  }
}
