import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:phishguard/main.dart';
import 'package:url_launcher/url_launcher.dart';
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
  void initState() {
    // TODO: implement initState
    super.initState();
    showBottom(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: WebViewWidget(controller: controller),
    ));
  }
}

showBottom(BuildContext context) async{
  await Future.delayed(Duration(seconds: 3));
  showModalBottomSheet(
    backgroundColor: Colors.white,
        context: context,
        builder: (ctx) {
          return Container(
            height: 250,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.network('https://brandlogos.net/wp-content/uploads/2015/09/google-logo-brandlogos.net_.png',
                height: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Open in Google',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),),
                ElevatedButton(
                  onPressed: () {
                      launchUrl();
                    
                  },
                  child: Text("Go to google"),
                )
              ],
            ),
          );
        });
}

launchUrl() async {
  final AndroidIntent intent = AndroidIntent(
    action: 'action_view',
    package: 'com.android.chrome',
    data: Uri.parse(url).toString(), // Correctly convert URL to string
  );
  await intent.launch();
}