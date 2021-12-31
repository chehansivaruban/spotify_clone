import 'package:flutter/material.dart';
import 'package:spotify_clone/views/album_view.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({
    Key? key,
    this.size = 120,
    required this.image,
    required this.lable,
  }) : super(key: key);
  final ImageProvider image;
  final String lable;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AlbumView(
                image: image,
                lable: lable,
              ),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: image,
              width: size,
              height: size,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(lable),
          ],
        ),
      ),
    );
  }
}
