import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementwithprovider/providers/movie_provider.dart';

class SecondScreen extends StatelessWidget{
  const SecondScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
  var fav = context.watch<MovieProvider>().favlist;

    return Scaffold(appBar: 
    AppBar(
      title: Text("Second Screen"),
    ),body:SafeArea(child: 
    ListView.builder(
      itemCount: fav.length,
      itemBuilder: (BuildContext context, int index){
      return ListTile(
        title: Text("Movie ${fav[index]}"),
        trailing: GestureDetector(
          onTap: (){
            context.read<MovieProvider>().removeFav(fav[index]);
          },
          child: Text("Remove")),
      );
    }))
    );
  }

}