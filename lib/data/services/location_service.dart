import 'package:collection/collection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';

import 'package:geocoding/geocoding.dart';

class LocationService {
  static final provider = Provider((ref) => LocationService());

  Future<Position> getLatLong() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<String> getAddressByLatLong(Position position) async {
    final placemarkList =
        await placemarkFromCoordinates(position.latitude, position.longitude);

    final firstAddress = placemarkList.first;

    List<String?> areas = [
      firstAddress.street,
      firstAddress.subAdministrativeArea,
      firstAddress.administrativeArea,
      firstAddress.country
    ];

    return areas
        .whereNotNull()
        .where((element) => element.isNotEmpty)
        .join(', ');
  }
}
