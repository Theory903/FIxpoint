import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';

enum BottomBarEnum { Home, Manage, Schedule, Review }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}
class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHomeGray70002,
      activeIcon: ImageConstant.imgNavHomeGray70002,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavManageOnsecondarycontainer,
      activeIcon: ImageConstant.imgNavManageOnsecondarycontainer,
      title: "lbl_manage".tr,
      type: BottomBarEnum.Manage,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavSchedule,
      activeIcon: ImageConstant.imgNavSchedule,
      title: "lbl_schedule".tr,
      type: BottomBarEnum.Schedule,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavReview,
      activeIcon: ImageConstant.imgNavReview,
      title: "lbl_review".tr,
      type: BottomBarEnum.Review,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
        boxShadow: [
          BoxShadow(
            color: Color(0X23000000),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -3,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 20.h,
                  width: 20.h,
                  color: Color(0XFF45E13D),
                ),
                SizedBox(height: 8.h),
                Text(
                  bottomMenuList[index].title ?? "",
                  style:
                      CustomTextStyles.labelMediumOnSecondaryContainer.copyWith(
                    color: Color(0XFF45E13D),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 24.h,
                  width: 24.h,
                  color: Color(0XFF666666),
                ),
                SizedBox(height: 6.h),
                Text(
                  bottomMenuList[index].title ?? "",
                  style: theme.textTheme.labelMedium!.copyWith(
                    color: Color(0XFF6B7280),
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}
class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      required this.activeIcon,
      this.title,
      required this.type});

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            )
          ],
        ),
      ),
    );
  }
}
