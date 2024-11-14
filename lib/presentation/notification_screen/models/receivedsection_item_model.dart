import 'package:equatable/equatable.dart';

/// This class is used in the [receivedsection_item_widget] screen.

// ignore_for_file: must_be_immutable
class ReceivedsectionItemModel extends Equatable {
  ReceivedsectionItemModel({this.received, this.time, this.id}) {
    received = received ?? "Received Shipping";
    time = time ?? "09:02 AM";
    id = id ?? "";
  }

  String? received;

  String? time;

  String? id;

  ReceivedsectionItemModel copyWith({
    String? received,
    String? time,
    String? id,
  }) {
    return ReceivedsectionItemModel(
      received: received ?? this.received,
      time: time ?? this.time,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [received, time, id];
}
