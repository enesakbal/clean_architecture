import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/config/router/app_router.dart';
import 'package:flutterbloc/main.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeToCounterExample>((event, emit) async {
      router.push(CounterExampleRoute());
    });
    on<HomeToCat>((event, emit) {
      router.push(CatRoute());
    });
  }
}
