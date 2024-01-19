import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ind_records/LogIn/presentations/pages/login.dart';
import 'package:ind_records/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IndRecords',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF7EF6F0),
          brightness: Brightness.dark,
          primary: const Color(0xFF7EF6F0),
        ),
        scaffoldBackgroundColor: const Color(0xFF01071B),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF01071B),
          centerTitle: true,
        ),
      ),
      home: const LoginPage(),
    );
  }
}
