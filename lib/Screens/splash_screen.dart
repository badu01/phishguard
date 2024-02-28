import 'package:flutter/material.dart';
import 'package:phishguard/Screens/home_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoHome(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Slapsh"),
      ),
    );
  }

}
  gotoHome(BuildContext ctx) async{
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
  }