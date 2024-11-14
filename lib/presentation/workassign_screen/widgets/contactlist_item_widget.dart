import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/contactlist_item_model.dart';

// ignore_for_file: must_be_immutable
class ContactlistItemWidget extends StatelessWidget {
  ContactlistItemWidget(this.contactlistItemModelObj,
      {Key? key, this.onTapRowrajusharma})
      : super(
          key: key,
        );

  ContactlistItemModel contactlistItemModelObj;

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
            imagePath: contactlistItemModelObj.rajuSharmaOne!,
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
                  contactlistItemModelObj.rajusharma!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 2.h),
                Text(
                  contactlistItemModelObj.washing!,
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
