import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/theme_changer.dart';
import 'package:flutter_provider/screen/count_example.dart';
import 'package:flutter_provider/screen/dark_theme_screen.dart';
import 'package:flutter_provider/screen/favourite/favourite_screen.dart';
import 'package:flutter_provider/screen/multiple_provider_example.dart';
import 'package:provider/provider.dart';


class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({super.key});

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
  final themeChanger = Provider.of<ThemeChanger>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme Demo"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body:  Column(
        children: [
        /* RadioListTile<ThemeMode>(
             title: Text('Light Mode'),
             value: ThemeMode.light,
             groupValue: ThemeMode.light,
             onChanged:  themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark Mode'),
              value: ThemeMode.dark,
              groupValue: ThemeMode.light,
              onChanged:  themeChanger.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System Mode'),
              value: ThemeMode.system,
              groupValue: ThemeMode.light,
              onChanged:  themeChanger.setTheme)*/
        ],
      ),
    );
  }
}
