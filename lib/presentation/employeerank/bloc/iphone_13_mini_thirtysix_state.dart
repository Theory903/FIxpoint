part of 'iphone_13_mini_thirtysix_bloc.dart';

/// Represents the state of Iphone13MiniThirtysix in the application.

// ignore_for_file: must_be_immutable
class Iphone13MiniThirtysixState extends Equatable {
  Iphone13MiniThirtysixState(
      {this.scrollviewTab2ModelObj, this.iphone13MiniThirtysixModelObj});

  Iphone13MiniThirtysixModel? iphone13MiniThirtysixModelObj;

  ScrollviewTab2Model? scrollviewTab2ModelObj;

  @override
  List<Object?> get props =>
      [scrollviewTab2ModelObj, iphone13MiniThirtysixModelObj];
  Iphone13MiniThirtysixState copyWith({
    ScrollviewTab2Model? scrollviewTab2ModelObj,
    Iphone13MiniThirtysixModel? iphone13MiniThirtysixModelObj,
  }) {
    return Iphone13MiniThirtysixState(
      scrollviewTab2ModelObj:
          scrollviewTab2ModelObj ?? this.scrollviewTab2ModelObj,
      iphone13MiniThirtysixModelObj:
          iphone13MiniThirtysixModelObj ?? this.iphone13MiniThirtysixModelObj,
    );
  }
}
