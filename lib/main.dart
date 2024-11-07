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
      // home: HomePage(),
      
    );
  }
}


