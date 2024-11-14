import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import '../bloc/ownerwishlist_bloc.dart';
import '../models/productlist_item_model.dart';

class ProductlistItemWidget extends StatelessWidget {
  ProductlistItemWidget(this.productlistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  final ProductlistItemModel productlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: 20.h),
        padding: EdgeInsets.symmetric(
          horizontal: 10.h,
          vertical: 12.h,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.onErrorContainer,
          borderRadius: BorderRadiusStyle.roundedBorder10,
          border: Border.all(
            color: appTheme.blueGray50,
            width: 1.h,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomImageView(
              imagePath: productlistItemModelObj.washing!,
              height: 84.h,
              width: 72.h,
              margin: EdgeInsets.only(left: 14.h),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 190.h,
                margin: EdgeInsets.only(top: 6.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              productlistItemModelObj.washing1!,
                              style: CustomTextStyles.titleSmallGray90003,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgThumbsUp,
                            height: 18.h,
                            width: 20.h,
                            margin: EdgeInsets.only(bottom: 2.h),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      productlistItemModelObj.toolsCounter!,
                      style: CustomTextStyles.labelLargeGray50003,
                    ),
                    SizedBox(height: 24.h),
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      context.read<OwnerwishlistBloc>().add(
                                          DecrementQuantityEvent(
                                              productlistItemModelObj:
                                                  productlistItemModelObj));
                                    },
                                    child: SizedBox(
                                      height: 18.h,
                                      width: 18.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant.imgUpload,
                                            height: 18.h,
                                            width: 18.h,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text(
                                    (productlistItemModelObj.quantity!)
                                        .toString(),
                                    style: CustomTextStyles
                                        .titleMediumInterGray90003_1,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: GestureDetector(
                                    onTap: () {
                                      context.read<OwnerwishlistBloc>().add(
                                          IncrementQuantityEvent(
                                              productlistItemModelObj:
                                                  productlistItemModelObj));
                                    },
                                    child: Container(
                                      height: 18.h,
                                      width: 18.h,
                                      margin: EdgeInsets.only(left: 12.h),
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgFacebookOnsecondarycontainer,
                                            height: 18.h,
                                            width: 18.h,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              productlistItemModelObj.rs999!,
                              style: CustomTextStyles.titleMediumInterGray90003,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
