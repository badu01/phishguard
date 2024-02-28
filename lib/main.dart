import 'package:flutter/material.dart';
import 'package:phishguard/Screens/splash_screen.dart';
import 'package:uni_links/uni_links.dart';

String url="nothing";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  url = await initDeepLinkState();
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: ScreenSplash(),
    );
  }
}

Future<String> initDeepLinkState() async {
  // Retrieve the initial deep link when the app is launched
  Uri? initialUri = await getInitialUri();

  if (initialUri != null) {
    // Handle the initial deep link as needed
    return handleDeepLink(initialUri);
  } else {
    return "no url";
  }
}

String handleDeepLink(Uri uri) {
  // Perform actions based on the deep link
  print("Handling deep link: ${uri.toString()}");
  return uri.toString();
}
