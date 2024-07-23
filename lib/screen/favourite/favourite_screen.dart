import 'package:flutter/material.dart';
class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    print("build");
    List<int> selectedItem = [];
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
                  return ListTile(
                    onTap: (){
                     selectedItem.add(index);
                     setState(() {

                     });
                     print(selectedItem);
                    },
                    title: Text("Item "+index.toString()),
                    trailing:    Icon(selectedItem.contains(index) ? Icons.facebook : Icons.favorite_outline)
                  ,
                  );
            
            }),
          )
        ],
      ),
    );
  }
}
