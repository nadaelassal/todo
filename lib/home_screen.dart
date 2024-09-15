// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_app/app_them.dart';
import 'package:todo_app/tabs/settings/settings_tab.dart';
import 'package:todo_app/tabs/tasks/tasks_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String routName = '/';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentTabIndex = 0;
  List<Widget> tabs = [TasksTab(), SettingsTab()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        padding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: AppThem.white,
        
        child: BottomNavigationBar(
          currentIndex: currentTabIndex,
          onTap: (index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: 'Tasks',
              icon: Icon(
                Icons.list,
                size: 32,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(
                Icons.settings_outlined,
                size: 32,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 32,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
