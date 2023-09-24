import 'package:flutter/material.dart';

class Music {
  String name;
  String artis;
  String album;
  int released;
  String genre;
  String img;

  Music({
    required this.name,
    required this.artis,
    required this.album,
    required this.released,
    required this.genre,
    required this.img,
  });
}

class MusicGrid extends StatelessWidget {
  MusicGrid({
    Key? key,
  }) : super(key: key);

  final List<Music> musics = [
    Music(
      name: 'Seven',
      artis: 'Jungkook',
      album: 'Seven (Weekend Ver.)',
      released: 2023,
      genre: 'Korean Dance, K-Pop',
      img: "assets/seven.jpg",
    ),
    Music(
      name: 'Sunflower',
      artis: 'Post Malone, Swae Lee',
      album: 'Spider-Man: Into the Spider-Verse',
      released: 2018,
      genre: 'Hip hop music, Rhythm and blues, Dream pop, Hip-Hop/Rap',
      img: "assets/sunflower.jpg",
    ),
    Music(
      name: 'Super shy',
      artis: 'NewJeans',
      album: 'NewJeans 2nd EP "Get Up"',
      released: 2023,
      genre: 'Jersey club, Alternative/Indie, Liquid funk, Pop',
      img: "assets/supershy.jpg",
    ),
    Music(
      name: 'Die for You',
      artis: 'The Weeknd',
      album: 'Starboy',
      released: 2016,
      genre: 'R&B/Soul, Dance/Electronic, Hip-Hop/Rap',
      img: "assets/dieforyou.jpg",
    ),
    Music(
      name: 'Daylight',
      artis: 'David Kushner',
      album: 'Bravo Hits 122',
      released: 2023,
      genre: 'Pop',
      img: "assets/daylight.png",
    ),
    Music(
      name: 'Love Yourself',
      artis: 'Justin Bieber',
      album: 'Purpose',
      released: 2015,
      genre: 'Blue-eyed soul, Nigerian R&B, Afropop, Pop',
      img: "assets/loveyourself.png",
    ),
    Music(
      name: 'Attention',
      artis: 'Charlie Puth',
      album: 'Attention',
      released: 2017,
      genre: 'Pop rock, Pop',
      img: "attention.png",
    ),
    Music(
      name: 'Shape of You',
      artis: 'Ed Sheeran',
      album: 'Divide',
      released: 2017,
      genre: 'Pop',
      img: "assets/shapeofyou.jpg",
    ),
    Music(
      name: 'Say so',
      artis: 'Doja Cat, Nicki Minaj',
      album: 'Hot Pink',
      released: 2019,
      genre: 'Pop music, Disco, R&B/Soul, Pop rap',
      img: "assets/sayso.png",
    ),
    Music(
      name: 'Butter',
      artis: 'BTS',
      album: 'Butter (Hotter, Sweeter, Cooler)',
      released: 2021,
      genre:
          'Dance-pop, Electronic dance music, Disco, Korean Dance, Pop, K-Pop',
      img: "assets/butter.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music List'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.all(10),
          itemCount: musics.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 5),
          itemBuilder: ((context, index) {
            return Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage(musics[index].img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  musics[index].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  musics[index].artis,
                ),
              ],
            );
          })),
    );
  }
}
