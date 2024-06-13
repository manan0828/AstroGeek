import 'package:astrogeek/module/apod/model/apod_dto.dart';

class ApodState {
  final bool isFetching;
  final String initialState;
  final ApodDTO apodDTO;

  factory ApodState.initial() => ApodState(
      isFetching: false, initialState: "In", apodDTO: ApodDTO.initial());

  const ApodState(
      {required this.isFetching,
      required this.initialState,
      required this.apodDTO});

  ApodState copyWith({
    bool? isFetching,
    String? initialState,
    ApodDTO? apodDTO,
  }) {
    return ApodState(
        isFetching: isFetching ?? this.isFetching,
        initialState: initialState ?? this.initialState,
        apodDTO: apodDTO ?? this.apodDTO);
  }
}