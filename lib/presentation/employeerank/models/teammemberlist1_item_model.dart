import 'package:equatable/equatable.dart';
import 'package:fixpoint/core/utils/image_constant.dart';

/// This class is used in the [teammemberlist1_item_widget] screen.

// ignore_for_file: must_be_immutable
class Teammemberlist1ItemModel extends Equatable {
  Teammemberlist1ItemModel(
      {this.rajuSharmaOne, this.rajusharma, this.washing, this.id}) {
    rajuSharmaOne = rajuSharmaOne ?? ImageConstant.imgEllipse344x44;
    rajusharma = rajusharma ?? "Raju sharma";
    washing = washing ?? "Washing";
    id = id ?? "";
  }

  String? rajuSharmaOne;

  String? rajusharma;

  String? washing;

  String? id;

  Teammemberlist1ItemModel copyWith({
    String? rajuSharmaOne,
    String? rajusharma,
    String? washing,
    String? id,
  }) {
    return Teammemberlist1ItemModel(
      rajuSharmaOne: rajuSharmaOne ?? this.rajuSharmaOne,
      rajusharma: rajusharma ?? this.rajusharma,
      washing: washing ?? this.washing,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [rajuSharmaOne, rajusharma, washing, id];
}
