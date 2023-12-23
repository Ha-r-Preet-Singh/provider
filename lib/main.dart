import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_intro_46/provider/count_list_provider.dart';
import 'package:provider_intro_46/provider/count_provider.dart';
import 'package:provider_intro_46/provider/example_one_provider.dart';
import 'package:provider_intro_46/screens/count_example.dart';
import 'package:provider_intro_46/screens/count_list.dart';
import 'package:provider_intro_46/screens/example_one.dart';
import 'package:provider_intro_46/why_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CountProvider(),),
      ChangeNotifierProvider(create: (_) => ExampleOneProvider(),),
      ChangeNotifierProvider(create: (_) => CountListProvider(),),


    ],
    child: MyApp(),

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: CountList(),
    );

  }
}
