import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:flutter/material.dart';

class SolarEclipseView extends StatelessWidget {
  const SolarEclipseView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(text: "Solar Eclipse"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const CommonBackButton()
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.12, 20, 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetConstants.eclipsebg), fit: BoxFit.fitHeight)
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: double.maxFinite,
                      child: InteractiveViewer(
                        maxScale: 3.0,
                        minScale: 0.8,
                        child:
                            const Image(image: AssetImage(AssetConstants.solarEclipse)),
                      ),
                    ),
                  ),
              const SizedBox(height: 70),
              Text(StringConstants.solarEclipse, style: primaryTextStyle(14))
            ],
          ),
        ),
      ),
    );
  }
}