import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/count_provider.dart';
import 'package:flutter_provider/provider/multiple_provider.dart';
import 'package:flutter_provider/screen/count_example.dart';
import 'package:flutter_provider/screen/favourite/favourite_screen.dart';
import 'package:flutter_provider/screen/multiple_provider_example.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //getting global context for provider
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> CountProvider()),
        ChangeNotifierProvider(create: (_)=> MultipleProvider()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const FavouriteScreen(),
      ),
    );
  }
}
