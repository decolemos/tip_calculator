import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tip_calculator/provider/calculate_provider.dart';
import 'package:tip_calculator/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CalculateProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: "BlackOpsOne"),
        home: const HomePage(),
      ),
    );
  }
}