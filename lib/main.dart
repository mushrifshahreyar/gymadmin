import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym/screens/homepage.dart';
import './constants.dart' as constants;

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: constants.appTitle,
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          textTheme: const TextTheme(
              displayLarge: TextStyle(
                  color: Colors.black87,
                  fontFamily: 'NotoSans',
                  fontSize: 26,
                  fontWeight: FontWeight.w600,),
              bodyLarge: TextStyle(
                  fontFamily: 'SansPro',
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 22))),
      home: HomePage(
        key: key,
      ),
    );
  }
}

class Utils {
  
}
