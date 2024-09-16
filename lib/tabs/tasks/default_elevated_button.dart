import 'package:flutter/material.dart';
import 'package:todo_app/app_them.dart';

class DefaultElevatedButton extends StatelessWidget {
  DefaultElevatedButton({required this.label, required this.onPressed});

  String label;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 52),
        backgroundColor: AppThem.primary,
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(color: AppThem.white, fontSize: 18),
      ),
    );
  }
}
