import 'package:equatable/equatable.dart';

/// This class is used in the [yesterdaynotifications_item_widget] screen.

// ignore_for_file: must_be_immutable
class YesterdaynotificationsItemModel extends Equatable {
  YesterdaynotificationsItemModel({this.shippingison, this.time, this.id}) {
    shippingison = shippingison ?? "Shipping is on the way ";
    time = time ?? "09:02 AM";
    id = id ?? "";
  }

  String? shippingison;

  String? time;

  String? id;

  YesterdaynotificationsItemModel copyWith({
    String? shippingison,
    String? time,
    String? id,
  }) {
    return YesterdaynotificationsItemModel(
      shippingison: shippingison ?? this.shippingison,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [shippingison, time, id];
}
