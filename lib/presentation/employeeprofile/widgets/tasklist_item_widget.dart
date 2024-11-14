import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/tasklist_item_model.dart';

// ignore_for_file: must_be_immutable
class TasklistItemWidget extends StatelessWidget {
  TasklistItemWidget(this.tasklistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  TasklistItemModel tasklistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.h,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.onErrorContainer,
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: tasklistItemModelObj.attendanceOne!,
            height: 22.h,
            width: 22.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24.h),
            child: Text(
              tasklistItemModelObj.attendanceTwo!,
              style: CustomTextStyles.titleSmallPrimary_1,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Text(
              tasklistItemModelObj.sixty!,
              style: CustomTextStyles.titleSmallOnSecondaryContainer,
            ),
          )
        ],
      ),
    );
  }
}
