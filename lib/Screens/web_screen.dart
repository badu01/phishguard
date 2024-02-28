import 'package:flutter/material.dart';
import 'package:phishguard/main.dart';
import 'package:webview_flutter/webview_flutter.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  WebViewController controller = WebViewController()
  ..loadRequest(Uri.parse(url));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: controller))
    );
  }
}