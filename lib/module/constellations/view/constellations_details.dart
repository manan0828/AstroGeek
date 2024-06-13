import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ConstellationDetailsUI extends StatelessWidget {
  final Constellations constellation;
  const ConstellationDetailsUI({super.key, required this.constellation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(text: constellation.name),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        leading: const CommonBackButton()
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.13, 20, 20),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.homebg), fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.white,
              child: InteractiveViewer(
                maxScale: 3.0,
                minScale: 0.8,
                child: SvgPicture.asset(
                  constellation.imgAsset,
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: double.maxFinite,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Meaning: ', style: primaryTextStyle(16)),
                        Text('Brightest Star: ', style: primaryTextStyle(16)),
                        Text('Best Visible: ', style: primaryTextStyle(16))
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(constellation.meaning,
                            style: primaryTextStyle(16)),
                        Text(constellation.brightestStar,
                            style: primaryTextStyle(16)),
                        Text(constellation.month,
                            style: primaryTextStyle(16))
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
