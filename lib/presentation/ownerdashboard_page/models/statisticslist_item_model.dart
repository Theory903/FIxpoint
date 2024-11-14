import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [statisticslist_item_widget] screen.

// ignore_for_file: must_be_immutable
class StatisticslistItemModel extends Equatable {
  StatisticslistItemModel({this.image, this.sixtyfive, this.revenue, this.id}) {
    image = image ?? ImageConstant.imgRectangle161;
    sixtyfive = sixtyfive ?? "+2.65%";
    revenue = revenue ?? "Revenue";
    id = id ?? "";
  }

  String? image;

  String? sixtyfive;

  String? revenue;

  String? id;

  StatisticslistItemModel copyWith({
    String? image,
    String? sixtyfive,
    String? revenue,
    String? id,
  }) {
    return StatisticslistItemModel(
      image: image ?? this.image,
      sixtyfive: sixtyfive ?? this.sixtyfive,
      revenue: revenue ?? this.revenue,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, sixtyfive, revenue, id];
}
