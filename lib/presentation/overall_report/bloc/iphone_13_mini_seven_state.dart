part of 'iphone_13_mini_seven_bloc.dart';

/// Represents the state of Iphone13MiniSeven in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniSevenState extends Equatable {
  Iphone13MiniSevenState({this.iphone13MiniSevenModelObj});

  Iphone13MiniSevenModel? iphone13MiniSevenModelObj;

  @override
  List<Object?> get props => [iphone13MiniSevenModelObj];
  Iphone13MiniSevenState copyWith(
      {Iphone13MiniSevenModel? iphone13MiniSevenModelObj}) {
    return Iphone13MiniSevenState(
      iphone13MiniSevenModelObj:
          iphone13MiniSevenModelObj ?? this.iphone13MiniSevenModelObj,
    );
  }
}
