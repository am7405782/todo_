import 'package:flutter/material.dart';
import 'package:untitled17/utles/Mytheam.dart';

import 'Layout/HomeLayout.dart';
import 'Screen/SplachSreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "to_do",
      initialRoute: SplachSreen.id,
      routes: {
        SplachSreen.id: (c) => SplachSreen(),
        HomeLayout.id: (c) => HomeLayout(),
      },
      debugShowCheckedModeBanner: false,
      theme: MyTheam.LightTheam,
    );
  }
}
