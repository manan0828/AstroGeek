import 'package:astrogeek/module/splash/controller/splah_bloc.dart';
import 'package:astrogeek/module/splash/controller/splash_event.dart';
import 'package:astrogeek/module/splash/controller/splash_state.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashScreenBloc()..add(SplashNavigationEvent()),
      child: const SplashScreenUI()
    );
  }
}

class SplashScreenUI extends StatelessWidget {
  const SplashScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashScreenBloc, SplashScreenState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetConstants.splashbg),
                fit: BoxFit.fill
              ),
            ),
            child: const Center(
              child: Text(
                "ASTROGEEK",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'VAS',
                  color: Colors.white
                )
              )
            ),
          ),
        );
      }
    );
  }
}
