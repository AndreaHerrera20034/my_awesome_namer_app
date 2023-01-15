import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:my_awesome_namer_app/statemanagers/my_app_state.dart';
import 'package:my_awesome_namer_app/pages/my_home_page.dart';
import 'package:provider/provider.dart';

void main()=> runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => MyAppState(),
    child: MaterialApp(
      title: 'My awesome namer app',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ),
    );
  }
}