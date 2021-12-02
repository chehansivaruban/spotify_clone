import 'package:flutter/material.dart';
import 'package:spotify_clone/widgets/album_card.dart';
import 'package:spotify_clone/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .6,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.1),
                  Colors.black.withOpacity(0),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Row(
                          children: const [
                            Icon(Icons.history),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        AlbumCard(
                          image: Image.asset(
                            "assets/album1.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Best Mode',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album2.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Motivation Mix',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/top50.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Top 50',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album4.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Romantic Mode',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album9.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Top Songs',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Good Evening",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                            RowAlbumCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                              label: "test",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Based on your recent listening",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: const [
                            SongCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                            ),
                            SongCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                            ),
                            SongCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                            ),
                            SongCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                            ),
                            SongCard(
                              image: AssetImage(
                                "assets/album9.jpg",
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class RowAlbumCard extends StatelessWidget {
  const RowAlbumCard({
    Key? key,
    required this.label,
    required this.image,
  }) : super(key: key);
  final String label;
  final AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(5),
      ),
      width: MediaQuery.of(context).size.width * .45,
      child: Row(
        children: [
          Image(
            image: image,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: 8,
          ),
          Text("data"),
        ],
      ),
    );
  }
}
