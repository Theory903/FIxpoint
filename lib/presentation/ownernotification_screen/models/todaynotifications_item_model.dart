import 'package:equatable/equatable.dart';

/// This class is used in the [todaynotifications_item_widget] screen.

// ignore_for_file: must_be_immutable
class TodaynotificationsItemModel extends Equatable {
  TodaynotificationsItemModel({this.time, this.id}) {
    time = time ?? "09:02 AM";
    id = id ?? "";
  }

  String? time;

  String? id;

  TodaynotificationsItemModel copyWith({
    String? time,
    String? id,
  }) {
    return TodaynotificationsItemModel(
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [time, id];
}
