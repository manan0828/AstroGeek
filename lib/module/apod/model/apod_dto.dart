import 'package:astrogeek/utils/data.dart';

class ApodDTO {
  final String date;
  final String explanation;
  final String hdurl;
  final String mediaType;
  final String serviceVersion;
  final String title;
  final String url;

  factory ApodDTO.initial() => ApodDTO(
      date: "08-06-2024",
      explanation: StringConstants.apodDetails,
      hdurl: "https://apod.nasa.gov/apod/image/2406/abell2744_jwst.png",
      mediaType: "image",
      serviceVersion: "v1",
      title: "Pandora's Cluster",
      url: "https://apod.nasa.gov/apod/image/2406/abell2744_jwst.png");

  ApodDTO(
      {required this.date,
      required this.explanation,
      required this.hdurl,
      required this.mediaType,
      required this.serviceVersion,
      required this.title,
      required this.url});

  factory ApodDTO.fromJson(Map<String, dynamic> json) {
    return ApodDTO(
        date: json["date"],
        explanation: json["explanation"],
        hdurl: json["hdurl"],
        mediaType: json["media_type"],
        serviceVersion: json["service_version"],
        title: json["title"],
        url: json["url"]);
  }
}