import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/teammemberlist_item_model.dart';

// ignore_for_file: must_be_immutable
class TeammemberlistItemWidget extends StatelessWidget {
  TeammemberlistItemWidget(this.teammemberlistItemModelObj,
      {Key? key, this.onTapRowrajusharma})
      : super(
          key: key,
        );

  TeammemberlistItemModel teammemberlistItemModelObj;

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
            imagePath: teammemberlistItemModelObj.rajuSharmaOne!,
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
                  teammemberlistItemModelObj.rajusharma!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.h),
                Text(
                  teammemberlistItemModelObj.washing!,
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
