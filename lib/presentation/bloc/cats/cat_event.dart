part of 'cat_bloc.dart';

abstract class CatEvent extends Equatable {
  const CatEvent();

  @override
  List<Object> get props => [];
}


class GetCats extends CatEvent{

}

class InitCats extends CatEvent{
  
}