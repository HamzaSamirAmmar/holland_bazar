import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:holland_bazar/core/widgets/buttons/custom_text_button.dart';
import 'package:holland_bazar/core/widgets/loader.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final LatLng _initialLocation =
      const LatLng(36.1921, 44.0109); // Erbil coordinates

  final double radius = 5000; // 5 kilometers

  late final double latDegrees;
  late final double lngDegrees;

  late final GoogleMapController mapController;

  final double _markerRadius = 100; // Radius of circle in meters
  final Set<Marker> _markers = {};
  final Set<Circle> _circles = {}; // add a circles set

  void _onCameraMove(CameraPosition position) {
    _updateMarker(position.target);
    _updateCircle(position.target);
  }

  void _updateMarker(LatLng latLng) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('centerMarker'),
          position: latLng,
        ),
      );
    });
  }

  void _updateCircle(LatLng latLng) {
    setState(() {
      _circles.clear();
      _circles.add(
        Circle(
          circleId: const CircleId('centerCircle'),
          center: latLng,
          radius: _markerRadius,
          strokeColor: Colors.transparent,
          strokeWidth: 2,
          fillColor: Theme.of(context).colorScheme.primary.withAlpha(75),
        ),
      );
    });
  }

  @override
  void initState() {
    latDegrees = radius / 111000; // Approximate degrees latitude per meter
    lngDegrees = radius / (111000 * cos(_initialLocation.latitude * pi / 180));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery Location"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            zoomControlsEnabled: false,
            // Set min zoom to stay in Syria
            minMaxZoomPreference: const MinMaxZoomPreference(9, null),
            markers: _markers,
            onCameraMove: _onCameraMove,
            circles: _circles,
            compassEnabled: false,
            mapType: MapType.normal,
            initialCameraPosition: CameraPosition(
              target: _initialLocation,
              zoom: 16,
            ),
            onMapCreated: (controller) {
              mapController = controller;
            },
            cameraTargetBounds: CameraTargetBounds(
              LatLngBounds(
                southwest: LatLng(
                  _initialLocation.latitude - latDegrees,
                  _initialLocation.longitude - lngDegrees,
                ),
                northeast: LatLng(
                  _initialLocation.latitude + latDegrees,
                  _initialLocation.longitude + lngDegrees,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 33.h,
            left: 26.w,
            right: 26.w,
            child: CustomTextButton(
              width: 324.w,
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitDoubleBounce(
                    color: Colors.white.withOpacity(0.9),
                  ),
                  SizedBox(width: 10.w),
                  Text(
                    "Deliver here",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
