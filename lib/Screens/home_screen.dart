import 'package:flutter/material.dart';
<<<<<<< Updated upstream
=======
import 'package:phishguard/Screens/widgets/my_widgets.dart';
>>>>>>> Stashed changes

class ScreenHome extends StatefulWidget {
  final String response;
  ScreenHome({super.key, required String this.response});
  
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  bool siteOk=false;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
    if(widget.response=='good')
    {
      siteOk=false;
    }
    else{
      siteOk=true;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text(widget.response),
        ),
      ),
    );
  }
}
