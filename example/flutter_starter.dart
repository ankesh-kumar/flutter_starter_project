import 'package:flutter/material.dart';
import 'package:flutter_starter_project/space_ui.dart';

class FlutterStarter extends StatelessWidget {
  const FlutterStarter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          RoundedContainer(
            child: Column(
              children: [
                const Text('Hello'),
                vSpacer(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
