import 'dart:math';

import 'package:flutter/material.darT';
import 'package:provider/provider.dart';

class WishList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var items = context.watch<MovieProvider>().wishmovie;

    return Scaffold(
      appBar: AppBar(
        title: Text("My WishList (${items.length})"),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final movie = items[index];
            return Card(
              key: ValueKey(movie.title),
              child: ListTile(
                title: Text(movie.title),
                trailing: TextButton(
                  onPressed: () {
                    context.read<MovieProvider>().removeFromList(movie);
                  },
                  child: Text("REMOVE"),
                ),
              ),
            );
          }),
    );
  }
}
final List<Movie> data = List.generate(
    100,
        (index) => Movie(
        title: "Movie $index", time: "${Random().nextInt(100) + 60} minute"));

class MovieProvider with ChangeNotifier {
  final List<Movie> movieHome = data;

  List<Movie> get movies => movieHome; // retrive all the movies

  final List<Movie> items = [];    //  fetch list from wishlist

  List<Movie> get wishmovie => items;

  void addToList(Movie movie){
    items.add(movie);
    notifyListeners();
  }

  void removeFromList(Movie movie){
    items.remove(movie);
    notifyListeners();
  }

}
class Movie{
  final String title;
  final String? time;
  Movie({required this.title, this.time});
}
void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => MovieProvider(),
    child: MaterialApp(home: Home()),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var movies = context.watch<MovieProvider>().movies;
    var movielist = context.watch<MovieProvider>().wishmovie;

    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> WishList()));
                },
                icon:  Icon(Icons.favorite),
                label:  Text("Go To WishList ${movielist.length}")),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                        itemCount:movies.length ,

                        itemBuilder: (context, index) {
                          var movie = movies[index];
                          return Card(
                            key: ValueKey(movie.title),
                            child: ListTile(
                              title: Text(movie.title),
                              subtitle: Text(movie.time ?? "No time"),
                              trailing: IconButton(
                                icon: Icon(Icons.favorite),
                                color: movielist.contains(movie)
                                    ? Colors.red
                                    : Colors.blue,
                                onPressed: () {
                                  if (!movielist.contains(movie)) {
                                    context.read<MovieProvider>().addToList(movie);
                                  } else {
                                    context.read<MovieProvider>().removeFromList(movie);
                                  }
                                },
                              ),
                            ),
                          );
                        }),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}