import 'package:equatable/equatable.dart';

/// This class is used in the [extralabellist_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExtralabellistItemModel extends Equatable {
  ExtralabellistItemModel(
      {this.extralabel,
      this.extralabelOne,
      this.smalllabel,
      this.smalllabelOne,
      this.smallsemibold,
      this.smallsemibold1,
      this.smallsemibold2,
      this.smallsemibold3,
      this.defaultlabel,
      this.defaultlabel1,
      this.id}) {
    extralabel = extralabel ?? "Washing ";
    extralabelOne = extralabelOne ?? "Washing ";
    smalllabel = smalllabel ?? "interactive design";
    smalllabelOne = smalllabelOne ?? "interactive design";
    smallsemibold = smallsemibold ?? "task 1/10";
    smallsemibold1 = smallsemibold1 ?? "10%";
    smallsemibold2 = smallsemibold2 ?? "task 1/10";
    smallsemibold3 = smallsemibold3 ?? "10%";
    defaultlabel = defaultlabel ?? "deadline 24 may 2022";
    defaultlabel1 = defaultlabel1 ?? "deadline 24 may 2022";
    id = id ?? "";
  }

  String? extralabel;

  String? extralabelOne;

  String? smalllabel;

  String? smalllabelOne;

  String? smallsemibold;

  String? smallsemibold1;

  String? smallsemibold2;

  String? smallsemibold3;

  String? defaultlabel;

  String? defaultlabel1;

  String? id;

  ExtralabellistItemModel copyWith({
    String? extralabel,
    String? extralabelOne,
    String? smalllabel,
    String? smalllabelOne,
    String? smallsemibold,
    String? smallsemibold1,
    String? smallsemibold2,
    String? smallsemibold3,
    String? defaultlabel,
    String? defaultlabel1,
    String? id,
  }) {
    return ExtralabellistItemModel(
      extralabel: extralabel ?? this.extralabel,
      extralabelOne: extralabelOne ?? this.extralabelOne,
      smalllabel: smalllabel ?? this.smalllabel,
      smalllabelOne: smalllabelOne ?? this.smalllabelOne,
      smallsemibold: smallsemibold ?? this.smallsemibold,
      smallsemibold1: smallsemibold1 ?? this.smallsemibold1,
      smallsemibold2: smallsemibold2 ?? this.smallsemibold2,
      smallsemibold3: smallsemibold3 ?? this.smallsemibold3,
      defaultlabel: defaultlabel ?? this.defaultlabel,
      defaultlabel1: defaultlabel1 ?? this.defaultlabel1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
        extralabel,
        extralabelOne,
        smalllabel,
        smalllabelOne,
        smallsemibold,
        smallsemibold1,
        smallsemibold2,
        smallsemibold3,
        defaultlabel,
        defaultlabel1,
        id
      ];
}
