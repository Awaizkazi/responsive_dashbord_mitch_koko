import 'package:flutter/material.dart';
import 'package:responsive_dashbord_mitch_koko/responsive/desktop_sacffold.dart';
import 'package:responsive_dashbord_mitch_koko/responsive/mobile_scaffold.dart';
import 'package:responsive_dashbord_mitch_koko/responsive/responsive_layout.dart';
import 'package:responsive_dashbord_mitch_koko/responsive/tablet_scaffold.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: const MobileScaffold(),
        desktopScaffold: const DesktopScaffold(),
        tabletScaffold: const TabletScaffold(),
      ),
    );
  }
}
