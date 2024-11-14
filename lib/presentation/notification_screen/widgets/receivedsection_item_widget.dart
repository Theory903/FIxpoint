import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/receivedsection_item_model.dart';

// ignore_for_file: must_be_immutable
class ReceivedsectionItemWidget extends StatelessWidget {
  ReceivedsectionItemWidget(this.receivedsectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ReceivedsectionItemModel receivedsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 8.h),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 26.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle72,
                        height: 46.h,
                        width: 48.h,
                        radius: BorderRadius.circular(
                          10.h,
                        ),
                        margin: EdgeInsets.only(bottom: 2.h),
                      ),
                      SizedBox(width: 16.h),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                receivedsectionItemModelObj.received!,
                                style: CustomTextStyles.bodySmallInter_1,
                              ),
                              SizedBox(height: 14.h),
                              Text(
                                receivedsectionItemModelObj.time!,
                                style: CustomTextStyles.bodySmallInterGray50001,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 4.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
    );
  }
}
