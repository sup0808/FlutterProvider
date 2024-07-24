import 'package:flutter/material.dart';

class ValueNotifyListener extends StatelessWidget {
  const ValueNotifyListener({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    ValueNotifier<int> _counter = ValueNotifier(0);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme Demo"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context,value,child){
                return Text(
                  "Subscribe ${_counter.value}",
                  style: TextStyle(fontSize: 30),
                );
              },
            )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
