import 'package:flutter/material.dart';

import 'color.dart';

class MyTheam {
  static final ThemeData LightTheam = ThemeData(
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: primaryColor,
      elevation: 0,
      iconTheme: IconThemeData(color: WhiteColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryColor, unselectedItemColor: Colors.grey),
  );
}
