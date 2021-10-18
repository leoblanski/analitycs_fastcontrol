import 'package:analytics/core/components/nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'FastControl',
          style: TextStyle(color: Colors.black),
        ),
        //backgroundColor: Colors.blue,
      ),
      endDrawer: const MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
        child: RouterOutlet(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  /*void showAsBottomSheet(context) async {
    await showSlidingBottomSheet(context, builder: (context) {
      return SlidingSheetDialog(
        elevation: 0,
        cornerRadius: 0,
        duration: const Duration(milliseconds: 400),
        snapSpec: const SnapSpec(
          snap: true,
          snappings: [0.45, 0.7, 1.0],
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        builder: (context, state) {
          return const Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 8.0),
            child: MainMenu(),
          );
        },
      );
    });
  }*/
}
