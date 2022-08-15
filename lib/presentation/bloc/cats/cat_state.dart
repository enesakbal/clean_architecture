part of 'cat_bloc.dart';

abstract class CatState extends Equatable {
  const CatState();

  @override
  List<Object> get props => [];
}

class CatInitial extends CatState {}

class CatLoading extends CatState {}

class CatComplete extends CatState {

  @override
  List<Object> get props => [];
}

class CatError extends CatState {}
