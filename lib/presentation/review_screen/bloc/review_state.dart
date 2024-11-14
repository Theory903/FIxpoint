part of 'review_bloc.dart';

/// Represents the state of Review in the application.

// ignore_for_file: must_be_immutable
class ReviewState extends Equatable {
  ReviewState({this.iphone13miniTab1ModelObj, this.reviewModelObj});

  ReviewModel? reviewModelObj;

  Iphone13miniTab1Model? iphone13miniTab1ModelObj;

  @override
  List<Object?> get props => [iphone13miniTab1ModelObj, reviewModelObj];
  ReviewState copyWith({
    Iphone13miniTab1Model? iphone13miniTab1ModelObj,
    ReviewModel? reviewModelObj,
  }) {
    return ReviewState(
      iphone13miniTab1ModelObj:
          iphone13miniTab1ModelObj ?? this.iphone13miniTab1ModelObj,
      reviewModelObj: reviewModelObj ?? this.reviewModelObj,
    );
  }
}
