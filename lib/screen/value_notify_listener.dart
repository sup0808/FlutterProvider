import 'package:flutter/material.dart';

class ValueNotifyListener extends StatelessWidget {
  const ValueNotifyListener({super.key});

  @override
  Widget build(BuildContext context) {
    print("build");
    ValueNotifier<int> _counter = ValueNotifier(0);
    ValueNotifier<bool> toggle = ValueNotifier(false);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme Demo"),
        centerTitle: true,
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ValueListenableBuilder(
              valueListenable: toggle,
              builder: (context, value, child) {
                return TextFormField(
                  obscureText: toggle.value,
                  decoration: InputDecoration(
                      hintText: 'Enter the Number',
                      suffixIcon: InkWell(
                          onTap: () {
                            toggle.value = !toggle.value;
                          },
                          child: Icon(toggle.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility))),
                );
              },
            ),
            Center(
                child: ValueListenableBuilder(
              valueListenable: _counter,
              builder: (context, value, child) {
                return Text(
                  "Subscribe ${_counter.value}",
                  style: TextStyle(fontSize: 30),
                );
              },
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter.value++;
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
