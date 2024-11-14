part of 'outlet_bloc.dart';

/// Represents the state of Outlet in the application.

// ignore_for_file: must_be_immutable
class OutletState extends Equatable {
  OutletState({this.scrollviewTab1ModelObj, this.outletModelObj});

  OutletModel? outletModelObj;

  ScrollviewTab1Model? scrollviewTab1ModelObj;

  @override
  List<Object?> get props => [scrollviewTab1ModelObj, outletModelObj];
  OutletState copyWith({
    ScrollviewTab1Model? scrollviewTab1ModelObj,
    OutletModel? outletModelObj,
  }) {
    return OutletState(
      scrollviewTab1ModelObj:
          scrollviewTab1ModelObj ?? this.scrollviewTab1ModelObj,
      outletModelObj: outletModelObj ?? this.outletModelObj,
    );
  }
}
