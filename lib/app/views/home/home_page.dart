import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/app/boundaries/home/home_controller.dart';
import 'package:flutter_clean_architecture/app/domain/wheater.dart';
import 'package:flutter_clean_architecture/app/views/home/components/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            CustomSwitchWidget(),
            ValueListenableBuilder<Wheater>(
                valueListenable: controller.wheater,
                builder: (context, model, child) {
                  if (model?.text == null) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Text(model.text);
                }),
          ],
        ),
      ),
    );
  }
}
