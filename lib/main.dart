import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wchat/colors.dart';
import 'package:wchat/firebase_options.dart';
import 'package:wchat/screens/mobile_layout_screen.dart';
import 'package:wchat/screens/web_layout_screen.dart';
import 'package:wchat/utils/responsive_layout.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat UI',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const ResponsiveLayout(
            mobileScreenLayout: MobileLayoutScreen(),
            webScreenLayout: WebLayoutScreen()));
  }
}
