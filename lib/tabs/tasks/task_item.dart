// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:todo_app/app_them.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: AppThem.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: Row(
        children: [
          Container(
            height: 62,
            width: 4,
            color: theme.primaryColor,
            margin: EdgeInsetsDirectional.only(end: 8),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Play Football',
                style: theme.textTheme.titleMedium
                    ?.copyWith(color: theme.primaryColor),
              ),
              Text(
                "This is the task description",
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
          Spacer(),
          Container(
            height: 34,
            width: 69,
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.check,
              color: AppThem.white,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}
