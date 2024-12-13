import 'package:flutter/material.dart';
import 'package:gku/widgets/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Gilbert Kutoto ',
      routerConfig: router,
      theme: ThemeData(
        primarySwatch: Colors.green,

        // Styling for scaffold
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

        // Input style (InputDecorationTheme)
        inputDecorationTheme: InputDecorationTheme(
          // Borders
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.green, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.pink, width: 1.0),
          ),
          // Error border (when validation fails)
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red, width: 1.5),
          ),
          // Focused error border (when validation fails and field is focused)
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red, width: 2.0),
          ),
          // Prefix icon style
          prefixIconColor: Colors.pink,
          // Hint text style
          hintStyle: TextStyle(
            color: Color.fromRGBO(250, 246, 246, 0.6),
            fontSize: 14,
          ),
          // Label text style
          labelStyle: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          // Error text style
          errorStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: 14,
          ),
          // Padding inside the input field
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16.0,
          ),
        ),
      ),
    );
  }
}
