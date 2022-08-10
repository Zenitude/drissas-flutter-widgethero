library albumcover_component;

import 'package:flutter/material.dart';
import 'package:my_app/pages/album/album_page.dart';

class AlbumCover extends StatelessWidget {
  const AlbumCover(
      {Key? key,
      required this.contextPage,
      required this.tagName,
      required this.urlImage})
      : super(key: key);

  final BuildContext contextPage;
  final String tagName;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
          onTap: (() {
            Navigator.push(
              contextPage,
              MaterialPageRoute(
                builder: (contextPage) => AlbumPage(tagAlbum: tagName, urlAlbum: urlImage)
              ),
            );
          }),
          child: Hero(
            tag: tagName,
            child: Image.network(urlImage),
          )),
    );
  }
}
