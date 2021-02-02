import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/boundaries/app/app_controller.dart';
import 'package:flutter_clean_architecture/app/views/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AppController.instance.getThemeSwitch,
        builder: (BuildContext context, bool isDark, Widget child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              brightness: isDark ? Brightness.dark : Brightness.light,
            ),
            home: HomePage(),
          );
        });
  }
}
