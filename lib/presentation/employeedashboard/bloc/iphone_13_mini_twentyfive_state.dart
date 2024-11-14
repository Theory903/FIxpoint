part of 'iphone_13_mini_twentyfive_bloc.dart';

/// Represents the state of Iphone13MiniTwentyfive in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniTwentyfiveState extends Equatable {
  Iphone13MiniTwentyfiveState({this.iphone13MiniTwentyfiveModelObj});

  Iphone13MiniTwentyfiveModel? iphone13MiniTwentyfiveModelObj;

  @override
  List<Object?> get props => [iphone13MiniTwentyfiveModelObj];
  Iphone13MiniTwentyfiveState copyWith(
      {Iphone13MiniTwentyfiveModel? iphone13MiniTwentyfiveModelObj}) {
    return Iphone13MiniTwentyfiveState(
      iphone13MiniTwentyfiveModelObj:
          iphone13MiniTwentyfiveModelObj ?? this.iphone13MiniTwentyfiveModelObj,
    );
  }
}
