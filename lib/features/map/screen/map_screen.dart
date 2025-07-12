import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mapminder_mobile/features/map/services/map_style_services.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  String? _mapStyle;
  late GoogleMapController mapController;


  // default position of map at start up
  // TODO: Replace with environ variables
  final LatLng _center = const LatLng(35.493057, 139.668340);
  final double _zoom = 8.0;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }
  // load dark map style for map
  // v0.0.1 supoprt's only dark mode
  @override
  void initState() {
    super.initState();
    _loadStyle();
  }

  void _loadStyle() async {
    final style = await MapStyleServices.loadDarkStyle();
    setState(() {
      _mapStyle = style;
    });
  }


  @override
  Widget build(BuildContext context) {
    // when mapStyle is not provided return loading indicator
    if (_mapStyle == null) {
      return const Center(child: CircularProgressIndicator());
    }

    // render map
    return Stack(
      children: <Widget>[
        GoogleMap(
          style: _mapStyle,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: _zoom
          ),
        )
      ],
    );
  }
}
