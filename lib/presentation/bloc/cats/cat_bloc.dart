import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterbloc/core/constants/api.dart';
import 'package:flutterbloc/main.dart';

part 'cat_event.dart';
part 'cat_state.dart';

class CatBloc extends Bloc<CatEvent, CatState> {
  CatBloc() : super(CatInitial()) {
    on<GetCats>((event, emit) {});
    on<InitCats>((event, emit) async {
      emit(CatLoading());
      await Future.delayed(Duration(seconds: 3));
      var response = await dio.get(ApiConstants.API_URL);
      print(response);
      emit(CatComplete());
    });
  }
}
