import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:phishguard/Screens/home_screen.dart';
import 'package:phishguard/main.dart';
import 'package:http/http.dart' as http;


class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  String prediction="";
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
  gotoHome(BuildContext ctx) async{
      sendPhishingRequest(url);
      print('url---------------> $url');
     // await Future.delayed(Duration(seconds: 3));
      Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (ctx1)=>ScreenHome(response: prediction,)));
  }
    Future<void> sendPhishingRequest(String inurl) async {
    final apiUrl = Uri.parse('http://192.168.43.254:5000/predict'); 
    Uri uri =Uri.parse(inurl);
    String domain=uri.host;
    print('hloooooooooo domain:  $domain');
    try {
      final response = await http.post(
        apiUrl,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'url':domain}),
      );

      if (response.statusCode == 200) {
        // Parse the response JSON
        final Map<String, dynamic> data = jsonDecode(response.body);
        setState(() {
          prediction = data['prediction'];
        });
        // Handle the prediction as needed (e.g., display it in the UI)
        //print('Prediction: $prediction');
      } else {
        print('Failed to get prediction. Error code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error sending request: $e');
    }
  }

}

