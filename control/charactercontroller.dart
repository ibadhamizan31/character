import 'package:movietugas/model/charactermodel.dart';

class Charactercontroller {
  final List<Charactermodel> characters = [
    Charactermodel(
      id: 1, 
      name: 'John Doe', 
      overview: 'A mysterious character.',
      gamename: "Adventure Quest",
      voteAverage: 8.5,
      posterPath: 'path/to/poster.jpg',
    ),
    Charactermodel(
      id: 2, 
      name: 'John Doe', 
      overview: 'A mysterious character.',
      gamename: "Adventure Quest",
      voteAverage: 8.5,
      posterPath: 'path/to/poster.jpg',
    ),
  ];

  // void deleteCharacter(id) {}
}