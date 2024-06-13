import 'package:astrogeek/module/home/controller/home_event.dart';
import 'package:astrogeek/module/home/controller/home_state.dart';
import 'package:astrogeek/module/home/model/home_dto.dart';
import 'package:astrogeek/module/home/repo/home_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<UpdateHomeTime>((event, emit) {
      emit(state.copyWith(isFetching: !state.isFetching));
    });

    on<HomeEvent>((event, emit) async {
      final HomeDTO homeDTO = await HomeRepoTmpl().getHomeData();
      emit(state.copyWith(homeDTO: homeDTO));
    });
  }
}