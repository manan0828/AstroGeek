import 'package:astrogeek/module/home/model/home_dto.dart';

class HomeState {
  final bool isFetching;
  final String initialState;
  final HomeDTO homeDTO;

  factory HomeState.initial() => HomeState(
      isFetching: false, initialState: "In", homeDTO: HomeDTO.initial());

  const HomeState(
      {required this.isFetching,
      required this.initialState,
      required this.homeDTO});

  HomeState copyWith({
    bool? isFetching, 
    String? initialState, 
    HomeDTO? homeDTO
  }) {
    return HomeState(
        isFetching: isFetching ?? this.isFetching,
        initialState: initialState ?? this.initialState,
        homeDTO: homeDTO ?? this.homeDTO);
  }
}