import 'package:flutter/material.dart';

class MultipleProviderExample extends StatefulWidget {
  const MultipleProviderExample({super.key});

  @override
  State<MultipleProviderExample> createState() =>
      _MultipleProviderExampleState();
}

class _MultipleProviderExampleState extends State<MultipleProviderExample> {
  double value = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Suscribe'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
              min: 0,
              max: 1,
              value: value,
              onChanged: (changeValue) {
                setState(() {
                  value = changeValue;
                });
              }),
          Row(

            children: [
              Expanded(
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.red.withOpacity(value)),
                  child: const Center(
                    child: Text("Container 1"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  decoration:
                      BoxDecoration(color: Colors.green.withOpacity(value)),
                  child: Center(
                    child: Text("Container 2"),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
