// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/app_them.dart';
import 'package:todo_app/tabs/tasks/default_elevated_button.dart';
import 'package:todo_app/tabs/tasks/default_text_form_feild.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime selectedDate = DateTime.now();
  DateFormat dateFormat = DateFormat('dd/MM/yyy');
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final titleMediumStyle = Theme.of(context).textTheme.titleMedium;
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.55,
      child: Form(
        key: formKey,
        child: Column(
          children: [
            Text(
              'Add new Task',
              style:
                  titleMediumStyle?.copyWith(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 8,
            ),
            DefaultTextFormFeild(
              controller: titleController,
              hintText: "Enter your task title",
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Title can not be empty';
                }
                return null;
              },
            ),
            SizedBox(
              height: 8,
            ),
            DefaultTextFormFeild(
              controller: descriptionController,
              hintText: "Enter your task description",
              maxLines: 5,
              validator: (value) {
                if (value == null || value.trim().isEmpty) {
                  return 'Description can not be empty';
                }
                return null;
              },
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Select date',
              style: titleMediumStyle?.copyWith(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            InkWell(
              onTap: () async {
                DateTime? dateTime = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)),
                  initialDate: selectedDate,
                  initialEntryMode: DatePickerEntryMode.calendarOnly,
                );
                if (dateTime != null) {
                  selectedDate = dateTime;
                  setState(() {});
                }
              },
              child: Text(
                dateFormat.format(selectedDate),
                style: titleMediumStyle?.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            DefaultElevatedButton(
              label: 'Submit',
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  addTask();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void addTask() {
    print('task added');
  }
}
