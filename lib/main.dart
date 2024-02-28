import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phishguard/Screens/splash_screen.dart';
import 'package:uni_links/uni_links.dart';

String url="nothing";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  url = await initDeepLinkState();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    textTheme: GoogleFonts.urbanistTextTheme(
      Theme.of(context).textTheme)),
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
