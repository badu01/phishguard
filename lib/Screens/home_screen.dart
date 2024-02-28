import 'package:flutter/material.dart';

import 'package:phishguard/Screens/widgets/my_widgets';



class ScreenHome extends StatelessWidget {
  final String response;
  ScreenHome({super.key, required String this.response});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: response =='bad'?siteNotOkWidget():siteOkWidget(),
        ),
      ),
    );
  }
}
