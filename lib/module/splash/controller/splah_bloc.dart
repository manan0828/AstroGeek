import 'dart:async';
import 'package:astrogeek/module/splash/controller/splash_event.dart';
import 'package:astrogeek/module/splash/controller/splash_state.dart';
import 'package:astrogeek/utils/routes.dart';
import 'package:bloc/bloc.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState()) {
    on<SplashNavigationEvent>((event, emit) {
      Timer(const Duration(seconds: 5),
          () => Get.toNamed(RouteNames.homePage));
    });
  }
}
