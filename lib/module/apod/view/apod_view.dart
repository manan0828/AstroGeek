import 'package:astrogeek/module/apod/controller/apod_bloc.dart';
import 'package:astrogeek/module/apod/controller/apod_event.dart';
import 'package:astrogeek/module/apod/controller/apod_state.dart';
import 'package:astrogeek/utils/common_widgets.dart';
import 'package:astrogeek/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class APODViewUI extends StatelessWidget {
  const APODViewUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApodBloc()..add(GetApodData()),
      child: BlocBuilder<ApodBloc, ApodState>(builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              title: const AppBarTitle(
                text: 'Astronomy Picture of Day',
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              leading: const CommonBackButton()),
          extendBodyBehindAppBar: true,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.1, 20, 20),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetConstants.homebg),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: double.maxFinite,
                    child: InteractiveViewer(
                      maxScale: 3.0,
                      minScale: 0.8,
                      child: Image.network(state.apodDTO.hdurl),
                    ),
                  ),
                ),
                Text(state.apodDTO.title, style: primaryTextStyle(20)),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      state.apodDTO.explanation, 
                      style: primaryTextStyle(14)
                    )
                  )
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}