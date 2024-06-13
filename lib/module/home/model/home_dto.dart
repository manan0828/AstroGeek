class HomeDTO {
  final String sunrise;
  final String sunset;
  final double sunAltitude;
  final double sunDistance;
  final String moonrise;
  final String moonset;
  final double moonAltitude;
  final double moonDistance;

  factory HomeDTO.initial() => HomeDTO(
      sunrise: "00:00",
      sunset: "00:00",
      sunAltitude: 0.0,
      sunDistance: 0.0,
      moonrise: "00:00",
      moonset: "00:00",
      moonAltitude: 0.0,
      moonDistance: 0.0);

  HomeDTO(
      {required this.sunrise,
      required this.sunset,
      required this.sunAltitude,
      required this.sunDistance,
      required this.moonrise,
      required this.moonset,
      required this.moonAltitude,
      required this.moonDistance});

  factory HomeDTO.fromJson(Map<String, dynamic> json) {
    return HomeDTO(
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        sunAltitude: json["sun_altitude"],
        sunDistance: json["sun_distance"],
        moonrise: json["moonrise"],
        moonset: json["moonset"],
        moonAltitude: json["moon_altitude"],
        moonDistance: json["moon_distance"]);
  }
}