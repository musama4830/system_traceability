import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:pharma_linx/screens/my_home_screen.dart';
import 'package:pharma_linx/screens/qr_result_screen.dart';

import '/colors.dart' as color;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pharma Linx',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        fontFamily: 'Quicksand',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color.AppColor.pageTitleFirstColor),
            bodyText2: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color.AppColor.pageTitleSecondColor)),
        appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color.AppColor.pageTitleFirstColor)),
      ),
      home: const MyHomePage(),
      routes: {
        '/my_home_screen': (ctx) => MyHomePage(),
      },
    );
  }
}
