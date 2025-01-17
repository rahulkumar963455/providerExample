import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementwithprovider/providers/movie_provider.dart';
import 'package:statemanagementwithprovider/second_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var fav = context.watch<MovieProvider>().favlist;

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.push(context, MaterialPageRoute(
        builder:(_)=> SecondScreen())),),
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, index) {
            return ListTile(
              title: Text("Movie$index"),
              trailing: GestureDetector(
                onTap: () {
                  if (!fav.contains(index)) {
                    context.read<MovieProvider>().addList(index);
                  } else {
                    context.read<MovieProvider>().removeFav(index);
                  }
                },
                child: Icon(
                  Icons.favorite,
                  color: fav.contains(index) ? Colors.pink : Colors.grey,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}