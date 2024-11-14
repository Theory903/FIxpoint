part of 'iphone_13_mini_nine_bloc.dart';

/// Represents the state of Iphone13MiniNine in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniNineState extends Equatable {
  Iphone13MiniNineState({this.iphone13MiniNineModelObj});

  Iphone13MiniNineModel? iphone13MiniNineModelObj;

  @override
  List<Object?> get props => [iphone13MiniNineModelObj];
  Iphone13MiniNineState copyWith(
      {Iphone13MiniNineModel? iphone13MiniNineModelObj}) {
    return Iphone13MiniNineState(
      iphone13MiniNineModelObj:
          iphone13MiniNineModelObj ?? this.iphone13MiniNineModelObj,
    );
  }
}
