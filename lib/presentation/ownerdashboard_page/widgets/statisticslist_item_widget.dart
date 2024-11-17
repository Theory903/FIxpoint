// widgets/statisticslist_item_widget.dart
import 'package:flutter/material.dart';
import '../models/statisticslist_item_model.dart';

class StatisticslistItemWidget extends StatelessWidget {
  final StatisticslistItemModel model;

  const StatisticslistItemWidget(
    this.model, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // Implement your widget UI here
      child: Column(
        children: [
          Text(
            model.title,
            style: TextStyle(
              // Your text style here
            ),
          ),
          Text(
            model.value,
            style: TextStyle(
              // Your text style here
            ),
          ),
        ],
      ),
    );
  }
}
