import 'package:astrogeek/module/home/model/home_dto.dart';
import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

abstract class HomeRepo {
  Future<HomeDTO> getHomeData();
}

class HomeRepoTmpl extends HomeRepo {
  late Dio dio;

  @override
  Future<HomeDTO> getHomeData() async {
    dio = Dio();
    Location location = await getCurrentPosition();

    var response = await dio.get(
        "${dotenv.env['GEO_URL']}${dotenv.env['GEO_KEY']}&lat=${location.latitude}&long=${location.longitude}");
    HomeDTO homeDTO = HomeDTO.fromJson(response.data);
    return homeDTO;
  }
}
