import 'package:astrogeek/utils/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class AppBarTitle extends StatelessWidget {
  final String text;
  const AppBarTitle({super.key, this.text = "ASTROGEEK"});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontFamily: 'VAS',
          fontWeight: FontWeight.w500,
          fontSize: 16,
          color: Colors.white),
    );
  }
}

TextStyle primaryTextStyle(double size) {
  return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      fontWeight: FontWeight.w400,
      color: Colors.white);
}

class CommonBackButton extends StatelessWidget {
  const CommonBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: const Icon(
        Icons.arrow_back,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}

extension StringExtension on String {
  void get logit {
    if (kDebugMode) {
      print(this);
    }
  }
}

Future<bool> _handleLocationPermission() async {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return false;
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return false;
  }
  return true;
}

Future<Location> getCurrentPosition() async {
  final hasPermission = await _handleLocationPermission();
  if (!hasPermission) return Location("-27.4748", "153.017");

  Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
      
  return Location(position.latitude.toStringAsFixed(3),
      position.longitude.toStringAsFixed(3));
}
