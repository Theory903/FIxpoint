import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/listtask_item_model.dart';

// ignore_for_file: must_be_immutable
class ListtaskItemWidget extends StatelessWidget {
  ListtaskItemWidget(this.listtaskItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListtaskItemModel listtaskItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle70,
          height: 46.h,
          width: 48.h,
          radius: BorderRadius.circular(
            10.h,
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listtaskItemModelObj.taskassigned!,
                style: CustomTextStyles.bodySmallInter_1,
              ),
              SizedBox(height: 18.h),
              Text(
                listtaskItemModelObj.time!,
                style: CustomTextStyles.bodySmallInterGray50001,
              )
            ],
          ),
        )
      ],
    );
  }
}
