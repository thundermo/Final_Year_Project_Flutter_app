import 'package:flutter/material.dart';
import 'package:FYP_demo_app/run_model_by_camera_demo.dart';
import 'package:FYP_demo_app/run_model_by_image_demo.dart';

Future<void> main() async {
  runApp(const ChooseDemo());
  print('App start');
}

class ChooseDemo extends StatefulWidget {
  const ChooseDemo({Key? key}) : super(key: key);

  @override
  State<ChooseDemo> createState() => _ChooseDemoState();
}

class _ChooseDemoState extends State<ChooseDemo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bus Identification Mobile'),
        ),
        body: Builder(builder: (context) {
          return Center(
            child: Column(
              children: [
                TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RunModelByCameraDemo()),
                    )
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Run Model with Camera",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RunModelByImageDemo()),
                    )
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    "Run Model with Image",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}


