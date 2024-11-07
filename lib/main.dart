import 'package:flutter/material.dart';
import 'package:gku/widgets/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gilbert Kutoto ',
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.green,

        // Styling for scafold
        scaffoldBackgroundColor: Colors.white,
        // Styling for text
        textTheme: TextTheme(
          bodySmall: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        buttonTheme: ButtonThemeData(
          // Styling for buttons
          buttonColor: Colors.green,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
    );
  }
}
