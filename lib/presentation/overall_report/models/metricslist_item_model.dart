import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [metricslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class MetricslistItemModel extends Equatable {
  MetricslistItemModel(
      {this.layerfourOne, this.totalrevenue, this.k, this.frameone, this.id}) {
    layerfourOne = layerfourOne ?? ImageConstant.imgLayer4;
    totalrevenue = totalrevenue ?? "Total Revenue";
    k = k ?? "Rs.56k";
    frameone = frameone ?? "+3,4%";
    id = id ?? "";
  }

  String? layerfourOne;

  String? totalrevenue;

  String? k;

  String? frameone;

  String? id;

  MetricslistItemModel copyWith({
    String? layerfourOne,
    String? totalrevenue,
    String? k,
    String? frameone,
    String? id,
  }) {
    return MetricslistItemModel(
      layerfourOne: layerfourOne ?? this.layerfourOne,
      totalrevenue: totalrevenue ?? this.totalrevenue,
      k: k ?? this.k,
      frameone: frameone ?? this.frameone,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [layerfourOne, totalrevenue, k, frameone, id];
}
