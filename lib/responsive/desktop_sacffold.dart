import 'package:flutter/material.dart';
import 'package:responsive_dashbord_mitch_koko/responsive/constants.dart';
import 'util/my_box.dart';
import 'util/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      backgroundColor: myDefalultBackground,
      drawer: myDrawer,
      body: Row(
        children: [
          // Open a Drawer
          myDrawer,

          // Rest of the body
          Expanded(
            flex: 2,
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                // tiles below it
                Expanded(
                  child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      }),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.pink,
            ),
          ),
        ],
      ),
    );
  }
}
