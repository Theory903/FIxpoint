part of 'ownerdashboard_bloc.dart';

/// Represents the state of Ownerdashboard in the application.

// ignore_for_file: must_be_immutable
class OwnerdashboardState extends Equatable {
  OwnerdashboardState(
      {this.scrollviewTabModelObj, this.ownerdashboardModelObj});

  OwnerdashboardModel? ownerdashboardModelObj;

  ScrollviewTabModel? scrollviewTabModelObj;

  @override
  List<Object?> get props => [scrollviewTabModelObj, ownerdashboardModelObj];
  OwnerdashboardState copyWith({
    ScrollviewTabModel? scrollviewTabModelObj,
    OwnerdashboardModel? ownerdashboardModelObj,
  }) {
    return OwnerdashboardState(
      scrollviewTabModelObj:
          scrollviewTabModelObj ?? this.scrollviewTabModelObj,
      ownerdashboardModelObj:
          ownerdashboardModelObj ?? this.ownerdashboardModelObj,
    );
  }
}
