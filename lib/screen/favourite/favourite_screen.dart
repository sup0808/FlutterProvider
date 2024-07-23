

import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/favourite_provider.dart';
import 'package:provider/provider.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {

    final provider = Provider.of<FavouriteProvider>(context,listen: false);
    print("build");
    return  Scaffold(
      appBar: AppBar(
        title: Text('Favourite App'),
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 26),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context,index){
                  return Consumer<FavouriteProvider>(builder: (context,values, child){
                   return ListTile(
                      onTap: (){
                        values.addItem(index);
                      },
                      title: Text("Item "+index.toString()),
                      trailing:

                      Icon(values.selectedItem.contains(index) ? Icons.favorite : Icons.favorite_outline)
                      ,
                    );

                  });
            }),
          )
        ],
      ),
    );
  }
}
