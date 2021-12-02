import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 14),
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
