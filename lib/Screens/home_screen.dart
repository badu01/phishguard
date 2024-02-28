import 'package:flutter/material.dart';
import 'package:phishguard/Screens/web_screen.dart';

import 'package:phishguard/Screens/widgets/my_widgets';



class ScreenHome extends StatelessWidget {
  final String response;
  const ScreenHome({super.key, required this.response});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: response =='bad'?siteNotOkWidget():const MyHomePage(),
        ),
      ),
    );
  }
}
