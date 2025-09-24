import 'package:chatapp/features/massage/view/cart_screen.dart';
import 'package:chatapp/features/massage/view/test_day_selected.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DaysSelectionScreen(),
      //MessageScreen(),
      //home: ChartListScreen(charts: []),
    );
  }
}
