import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/multiple_provider.dart';

class MultipleProviderExample extends StatefulWidget {
  const MultipleProviderExample({super.key});

  @override
  State<MultipleProviderExample> createState() =>
      _MultipleProviderExampleState();
}

class _MultipleProviderExampleState extends State<MultipleProviderExample> {

  @override
  Widget build(BuildContext context) {
    print("build");
    final provider = Provider.of<MultipleProvider>(context,listen: false);

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
          Consumer<MultipleProvider>(builder: (context,values,child){
            return Slider(
                min: 0,
                max: 1,
                value: values.value,
                onChanged: (changeValue) {
                  provider.setValue(changeValue);
                });
          }),
          Consumer<MultipleProvider>(builder: (context,values, child){
            return   Row(

              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:
                    BoxDecoration(color: Colors.red.withOpacity(values.value)),
                    child: const Center(
                      child: Text("Container 1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration:
                    BoxDecoration(color: Colors.green.withOpacity(values.value)),
                    child: Center(
                      child: Text("Container 2"),
                    ),
                  ),
                )
              ],
            );
          })

        ],
      ),
    );
  }
}
