import 'package:astrogeek/module/apod/view/apod_view.dart';
import 'package:astrogeek/module/constellations/view/constellations_details.dart';
import 'package:astrogeek/module/constellations/view/constellations_list_view.dart';
import 'package:astrogeek/module/eclipses/view/eclipse_view.dart';
import 'package:astrogeek/module/eclipses/view/lunar_eclipse.dart';
import 'package:astrogeek/module/eclipses/view/solar_eclipse.dart';
import 'package:astrogeek/module/home/view/home_view.dart';
import 'package:astrogeek/module/maps/view/maps_ui.dart';
import 'package:astrogeek/module/splash/view/splash_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class RouteNames {
  static const String splash = "/";
  static const String homePage = "/homePage";
  static const String apodDetails = "/apodDetails";
  static const String contellationList = "/constellationList";
  static const String constellationDetails = "/constellationDetails";
  static const String eclipseView = "/eclipseView";
  static const String mapsView = "/mapsView";
  static const String solarEclipse = "/solarEclipse";
  static const String lunarEclipse = "/lunarEclipse";
}

final pages = [
  GetPage(
      curve: Curves.easeInOutQuint,
      name: RouteNames.splash,
      transition: Transition.fade,
      page: () => const SplashScreen()),
  GetPage(
      curve: Curves.easeInOutQuint,
      name: RouteNames.homePage,
      page: () => const HomePageUI()),
  GetPage(name: RouteNames.apodDetails, page: () => const APODViewUI()),
  GetPage(
      name: RouteNames.contellationList,
      page: () => const ConstellationListViewUI()),
  GetPage(
      name: RouteNames.constellationDetails,
      page: () {
        ConstellationDetailsUI pickArgs = Get.arguments;
        return pickArgs;
      }),
  GetPage(name: RouteNames.eclipseView, page: () => const EclipseViewUI()),
  GetPage(name: RouteNames.mapsView, page: () => const MapsUI()),
  GetPage(name: RouteNames.solarEclipse, page: () => const SolarEclipseView()),
  GetPage(name: RouteNames.lunarEclipse, page: () => const LunarEclipseView())
];
