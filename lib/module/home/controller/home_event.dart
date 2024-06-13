abstract class HomeEvent {
  HomeEvent();
}

class UpdateHomeTime extends HomeEvent {
  final bool value;
  UpdateHomeTime({required this.value});
}

class GetHomeData extends HomeEvent {
  GetHomeData();
}