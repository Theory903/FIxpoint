import 'package:fixpoint/core/app_export.dart';
import 'package:flutter/material.dart';
import 'bloc/schedule_bloc.dart';
import 'models/extralabellist_item_model.dart';
import 'models/iphone13mini_tab_model.dart';
import 'widgets/extralabellist_item_widget.dart';

class Iphone13miniTabPage extends StatefulWidget {
  const Iphone13miniTabPage({Key? key})
      : super(
          key: key,
        );

  @override
  Iphone13miniTabPageState createState() => Iphone13miniTabPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ScheduleBloc>(
      create: (context) => ScheduleBloc(ScheduleState(
        iphone13miniTabModelObj: Iphone13miniTabModel(),
      ))
        ..add(ScheduleInitialEvent()),
      child: Iphone13miniTabPage(),
    );
  }
}

class Iphone13miniTabPageState extends State<Iphone13miniTabPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 34.h),
      child: Column(
        children: [_buildExtraLabelList(context)],
      ),
    );
  }

  /// Section Widget
  Widget _buildExtraLabelList(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 32.h),
        child: BlocSelector<ScheduleBloc, ScheduleState, Iphone13miniTabModel?>(
          selector: (state) => state.iphone13miniTabModelObj,
          builder: (context, iphone13miniTabModelObj) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount:
                  iphone13miniTabModelObj?.extralabellistItemList.length ?? 0,
              itemBuilder: (context, index) {
                ExtralabellistItemModel model =
                    iphone13miniTabModelObj?.extralabellistItemList[index] ??
                        ExtralabellistItemModel();
                return ExtralabellistItemWidget(
                  model,
                  onTapAssign: () {
                    onTapAssign(context);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }

  onTapAssign(BuildContext context) {}
}
