import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class MapsUI extends StatefulWidget {
  const MapsUI({super.key});

  @override
  State<MapsUI> createState() => _MapsUIState();
}

class _MapsUIState extends State<MapsUI> {
  final moonUri = Uri.parse('${dotenv.env['MOON_MAP_URL']}');
  final marsUri = Uri.parse('${dotenv.env['MARS_MAP_URL']}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const AppBarTitle(text: 'Maps'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: const CommonBackButton()),
      extendBodyBehindAppBar: true,
      body: Container(
        padding: EdgeInsets.fromLTRB(
            20, MediaQuery.of(context).size.height * 0.13, 20, 20),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetConstants.homebg), fit: BoxFit.fill)),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppBarTitle(text: "Maps coming soon")
          ],
        ),
      ),
    );
  }
}
