abstract class ApodEvent {
  ApodEvent();
}

class UpdateTime extends ApodEvent {
  final bool value;
  UpdateTime({required this.value});
}

class GetApodData extends ApodEvent {
  GetApodData();
}