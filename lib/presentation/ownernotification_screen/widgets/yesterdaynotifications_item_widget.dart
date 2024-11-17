import 'package:flutter/material.dart';
import '../models/yesterdaynotifications_item_model.dart';

class YesterdaynotificationsItemWidget extends StatelessWidget {
  final YesterdaynotificationsItemModel model;

  const YesterdaynotificationsItemWidget(
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
