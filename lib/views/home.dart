import 'package:flutter/material.dart';

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
                          lable: 'Best Mode',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album3.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Best Mode',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album4.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Best Mode',
                        ),
                        AlbumCard(
                          image: Image.asset(
                            "assets/album4.jpg",
                            width: 120,
                            height: 120,
                          ),
                          lable: 'Best Mode',
                        ),
                      ],
                    ),
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

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    Key? key,
    required this.image,
    required this.lable,
  }) : super(key: key);
  final Widget image;
  final String lable;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          const SizedBox(
            height: 10,
          ),
          Text(lable),
        ],
      ),
    );
  }
}
