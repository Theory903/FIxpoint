import 'package:flutter/material.dart';
import '../models/todaynotifications_item_model.dart';

class TodaynotificationsItemWidget extends StatelessWidget {
  final TodaynotificationsItemModel model;

  const TodaynotificationsItemWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(model.title),
      subtitle: Text(model.message),
      trailing: Text(
        '${model.time.hour}:${model.time.minute}',
        style: TextStyle(fontSize: 12),
      ),
    );
  }
}
