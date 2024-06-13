import 'package:astrogeek/module/apod/model/apod_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class ApodRepo {
  Future<ApodDTO> getApodData();
}

class ApodRepoImpl extends ApodRepo {
  late Dio dio;

  @override
  Future<ApodDTO> getApodData() async {
    dio = Dio();

    var response = await dio.get(
        "${dotenv.env['APOD_URL']}${dotenv.env['APOD_KEY']}");
    ApodDTO apodDTO = ApodDTO.fromJson(response.data);
    return apodDTO;
  }
}
