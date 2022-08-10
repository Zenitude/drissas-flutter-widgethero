library titleartist_component;

import 'package:flutter/material.dart';

class TitleArtist extends StatelessWidget {
  const TitleArtist({Key? key, required this.album, required this.artist})
      : super(key: key);

  final String album;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(album, style: const TextStyle(fontSize: 40, color: Colors.white)),
        Text(
          artist,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
