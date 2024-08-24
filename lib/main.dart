import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/screens/leading/leading_screen.dart';
import 'package:portfolio/utils/app_theme.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Portfolio ⚡Abdallh Mostafa elRabiey⚡',
      theme:AppTheme.dartTheme(context),
      home: const LeadingScreen(),
    );
  }
}
