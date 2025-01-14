import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;

  const SongCard({
    Key? key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) {
          //     return
          //     AlbumView(
          //       image: image,
          //     );
          //   }),
          // );
        },
        child: SizedBox(
          width: 140,
          child: Column(
            children: [
              Image(
                image: image,
                width: 140,
                height: 140,
              ),
              Text(
                "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
                style: Theme.of(context).textTheme.caption,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
