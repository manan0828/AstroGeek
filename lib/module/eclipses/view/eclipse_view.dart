import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:astrogeek/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class EclipseViewUI extends StatefulWidget {
  const EclipseViewUI({super.key});

  @override
  State<EclipseViewUI> createState() => _EclipseViewUIState();
}

class _EclipseViewUIState extends State<EclipseViewUI> {
  bool isSolar = false;
  Duration duration = const Duration(milliseconds: 700);
  void handleSwipe(DragEndDetails details) {
    if (details.primaryVelocity != null) {
      if (details.primaryVelocity! > 0) {
        setState(() {
          isSolar = !isSolar;
        });
      } else if (details.primaryVelocity! < 0) {
        setState(() {
          isSolar = !isSolar;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarTitle(text: 'Eclipses'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: const CommonBackButton()),
      extendBodyBehindAppBar: true,
      body: GestureDetector(
        onVerticalDragEnd: handleSwipe,
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetConstants.homebg), fit: BoxFit.fill)),
          child: Stack(
            children: [
              //Sun Position
              Positioned(
                  top: -MediaQuery.of(context).size.width * 0.5,
                  left: 0,
                  child: Image(
                    image: const AssetImage(AssetConstants.sunImg),
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                  )),
              //Hint Text Position
              Positioned(
                  bottom: 25,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Text("(Swipe up or down)",
                          style: primaryTextStyle(14)),
                    ),
                  )),
              //Moon Position
              AnimatedPositioned(
                  top: isSolar
                      ? MediaQuery.of(context).size.height * 0.4
                      : MediaQuery.of(context).size.height * 0.6,
                  duration: duration,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Image(
                          image: const AssetImage(AssetConstants.moonImg),
                          height: MediaQuery.of(context).size.width * 0.1,
                          width: MediaQuery.of(context).size.width * 0.1),
                    ),
                  )),
              //Earth Position
              AnimatedPositioned(
                  top: isSolar
                      ? MediaQuery.of(context).size.height * 0.5
                      : MediaQuery.of(context).size.height * 0.4,
                  duration: duration,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Image(
                          image: const AssetImage(AssetConstants.earthImg),
                          height: MediaQuery.of(context).size.width * 0.25,
                          width: MediaQuery.of(context).size.width * 0.25),
                    ),
                  )),
              //Lunar Eclipse Button
              AnimatedPositioned(
                  bottom: isSolar
                      ? -MediaQuery.of(context).size.height * 0.1
                      : MediaQuery.of(context).size.height * 0.15,
                  duration: duration,
                  child: AnimatedOpacity(
                    opacity: isSolar ? 0.0 : 1.0,
                    duration: duration,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: InkWell(
                        onTap: () {
                          Get.toNamed(RouteNames.lunarEclipse);
                        },
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: AppBarTitle(text: "Lunar Eclipse"),
                          ),
                        ),
                      )),
                    ),
                  )),
              //Solar Eclipse Button
              AnimatedPositioned(
                  bottom: isSolar
                      ? MediaQuery.of(context).size.height * 0.15
                      : -MediaQuery.of(context).size.height * 0.1,
                  duration: duration,
                  child: AnimatedOpacity(
                    opacity: isSolar ? 1.0 : 0.0,
                    duration: duration,
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RouteNames.solarEclipse);
                      },
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                            child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.7,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: 2, color: Colors.white),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: AppBarTitle(text: "Solar Eclipse"),
                          ),
                        )),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
