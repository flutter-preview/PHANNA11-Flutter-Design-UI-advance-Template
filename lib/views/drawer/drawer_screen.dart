import 'package:design_ui/views/drawer/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Align(
            child: Text(
              'User Profile',
              style: TextStyle(fontSize: 28, fontFamily: 'bokor'),
            ),
          ),
          DrawerWidget().cardUser(),
          DrawerWidget().menuIcon(),
          DrawerWidget().ListMenu()
        ]),
      ),
    );
  }
}
