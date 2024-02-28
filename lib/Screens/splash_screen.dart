import 'package:flutter/material.dart';
import 'package:phishguard/Screens/home_screen.dart';
import 'package:uni_links/uni_links.dart';
import 'package:http/http.dart' as http;


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
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
      await Future.delayed(Duration(seconds: 3));
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome()));
  }