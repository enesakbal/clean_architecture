part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeToCounterExample extends HomeEvent{
  const HomeToCounterExample();
}

class HomeToCat extends HomeEvent{
  const HomeToCat();
}