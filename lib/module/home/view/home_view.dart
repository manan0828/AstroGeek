import 'package:astrogeek/module/home/controller/home_bloc.dart';
import 'package:astrogeek/module/home/controller/home_event.dart';
import 'package:astrogeek/module/home/controller/home_state.dart';
import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:astrogeek/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class HomePageUI extends StatefulWidget {
  const HomePageUI({super.key});

  @override
  State<HomePageUI> createState() => _HomePageUIState();
}

class _HomePageUIState extends State<HomePageUI> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc()..add(GetHomeData()),
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        return PopScope(
          canPop: true,
          onPopInvoked: (bool didPop) {
            SystemNavigator.pop();
            if (!didPop) {
              "Couldn't Pop".logit;
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const AppBarTitle(),
              centerTitle: true,
              backgroundColor: Colors.transparent,
            ),
            extendBodyBehindAppBar: true,
            body: Container(
              padding: EdgeInsets.fromLTRB(
                  20, MediaQuery.of(context).size.height * 0.1, 20, 0),
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(AssetConstants.homebg),
                      fit: BoxFit.fill)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DetailsContainer(
                            riseTime: "Sunrise: ${state.homeDTO.sunrise}",
                            setTime: "Sunset: ${state.homeDTO.sunset}",
                            distance:
                                "Distance: ${state.homeDTO.sunDistance.toPrecision(2)} kms",
                            altitude:
                                "Altitude: ${state.homeDTO.sunAltitude.toPrecision(2)} degrees",
                            img: AssetConstants.sunImg),
                        DetailsContainer(
                            riseTime: "Moonrise: ${state.homeDTO.moonrise}",
                            setTime: "Moonset: ${state.homeDTO.moonset}",
                            distance:
                                "Distance: ${state.homeDTO.moonDistance.toPrecision(2)} kms",
                            altitude:
                                "Altitude: ${state.homeDTO.moonAltitude.toPrecision(2)} degrees",
                            img: AssetConstants.moonImg),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ItemTile(
                              img: AssetConstants.apodImg,
                              title: 'APOD',
                              onTap: (context) {
                                Get.toNamed(RouteNames.apodDetails);
                              },
                            ),
                            ItemTile(
                              img: AssetConstants.constellationImg,
                              title: 'Constellation',
                              onTap: (context) {
                                Get.toNamed(RouteNames.contellationList);
                              },
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ItemTile(
                                img: AssetConstants.eclipseImg,
                                title: 'Eclipse',
                                isWhite: false,
                                onTap: (context) {
                                  Get.toNamed(RouteNames.eclipseView);
                                }),
                            ItemTile(
                                img: AssetConstants.mapsImg,
                                title: 'Maps',
                                onTap: (context) {
                                  Get.toNamed(RouteNames.mapsView);
                                })
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

class DetailsContainer extends StatelessWidget {
  final String img;
  final String riseTime;
  final String setTime;
  final String distance;
  final String altitude;
  const DetailsContainer(
      {super.key,
      required this.img,
      this.riseTime = "Sunrise: 06:59",
      this.setTime = "Sunset: 06:59",
      this.altitude = "Altitude: 25.68 degrees",
      this.distance = "Distance: 148100654.59 kms"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          const SizedBox(width: 25),
          Image(image: AssetImage(img), height: 80, width: 80),
          const SizedBox(width: 25),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(riseTime, style: primaryTextStyle(12)),
                  const SizedBox(width: 15),
                  Text(setTime, style: primaryTextStyle(12)),
                ],
              ),
              Text(distance, style: primaryTextStyle(12)),
              Text(altitude, style: primaryTextStyle(12)),
            ],
          )
        ],
      ),
    );
  }
}

class ItemTile extends StatelessWidget {
  final bool isWhite;
  final String img;
  final String title;
  final Function(BuildContext context) onTap;
  const ItemTile(
      {super.key,
      required this.img,
      required this.title,
      required this.onTap,
      this.isWhite = true});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.15,
        width: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(width: 2, color: Colors.white),
            borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
                image: AssetImage(img),
                height: MediaQuery.of(context).size.width * 0.2,
                width: MediaQuery.of(context).size.width * 0.2,
                color: isWhite ? Colors.white : null),
            Text(title, style: primaryTextStyle(12))
          ],
        ),
      ),
    );
  }
}
