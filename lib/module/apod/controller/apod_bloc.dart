import 'package:astrogeek/module/apod/controller/apod_event.dart';
import 'package:astrogeek/module/apod/controller/apod_state.dart';
import 'package:astrogeek/module/apod/model/apod_dto.dart';
import 'package:astrogeek/module/apod/repo/apod_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApodBloc extends Bloc<ApodEvent, ApodState> {
  ApodBloc() : super(ApodState.initial()) {
    on<UpdateTime>((event, emit) {
      emit(state.copyWith(isFetching: !state.isFetching));
    });

    on<ApodEvent>(
      (event, emit) async {
        final ApodDTO apodDTO = await ApodRepoImpl().getApodData();
        emit(state.copyWith(apodDTO: apodDTO));
      },
    );
  }
}