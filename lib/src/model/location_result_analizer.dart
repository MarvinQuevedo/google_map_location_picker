import '../../google_map_location_picker.dart';

class LocationResultAnalizer {
  final LocationResult result;
  LocationResultAnalizer(this.result);
  String getValue(String type, {String def = ""}) {
    final list = result.components;
    for (var element in list) {
      String long_name = element["long_name"];
      String short_name = element["short_name"];
      List types = element["types"] as List;
      for (var t in types) {
        if (type == t) {
          return long_name;
        }
      }
    }
    return def;
  }
}
