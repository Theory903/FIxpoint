import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/teammemberlist1_item_model.dart';

// ignore_for_file: must_be_immutable
class Teammemberlist1ItemWidget extends StatelessWidget {
  Teammemberlist1ItemWidget(this.teammemberlist1ItemModelObj,
      {Key? key, this.onTapRowrajusharma})
      : super(
          key: key,
        );

  Teammemberlist1ItemModel teammemberlist1ItemModelObj;

  VoidCallback? onTapRowrajusharma;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowrajusharma?.call();
      },
      child: Row(
        children: [
          CustomImageView(
            imagePath: teammemberlist1ItemModelObj.rajuSharmaOne!,
            height: 44.h,
            width: 44.h,
            radius: BorderRadius.circular(
              22.h,
            ),
          ),
          SizedBox(width: 14.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  teammemberlist1ItemModelObj.rajusharma!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.h),
                Text(
                  teammemberlist1ItemModelObj.washing!,
                  style: theme.textTheme.labelLarge,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
