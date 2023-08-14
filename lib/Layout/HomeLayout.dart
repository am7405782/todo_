import 'package:flutter/material.dart';

import '../Screen/Seyting.dart';
import '../Screen/Task.dart';
import '../models/ShowButtomSheet.dart';

class HomeLayout extends StatefulWidget {
  static const String id = "HomeLayout";

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int index = 0;

  List<Widget> tad = [
    Task(),
    Seting(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Todo_App",
        ),
      ),
      body: tad[index],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list, size: 30), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings, size: 30), label: ""),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4,
          ),
        ),
        onPressed: () {
          ShowBottomSheetAppTask();
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  ShowBottomSheetAppTask() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowButtomSheet();
      },
    );
  }
}
