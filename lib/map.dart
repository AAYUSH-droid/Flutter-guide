import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
// ignore: unused_import
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class MyMapPage extends StatelessWidget {
  const MyMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Example'),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: FlutterMap(
          // ignore: prefer_const_constructors
          options: MapOptions(
            initialCenter: const LatLng(19.0760, 72.8777),
            initialZoom: 9.2,
          ),
          nonRotatedChildren: [
            RichAttributionWidget(
              attributions: [
                TextSourceAttribution(
                  'OpenStreetMap contributors',
                  onTap: () => launchUrl(
                      Uri.parse('https://openstreetmap.org/copyright')),
                ),
              ],
            ),
          ],
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'com.example.app',
            ),
          ],
        ),
      ),
    );
  }
}
