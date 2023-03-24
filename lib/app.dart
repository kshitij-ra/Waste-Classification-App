import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widget/waste_recogniser.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );
    return MaterialApp(
      title: 'Waste Classification App',
      theme: ThemeData.light(),
      home: const WasteRecogniser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
