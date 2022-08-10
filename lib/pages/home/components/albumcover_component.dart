library albumcover_component;

import 'package:flutter/material.dart';
import 'package:my_app/pages/album/album_page.dart';

class AlbumCover extends StatelessWidget {
  const AlbumCover(
      {Key? key,
      required this.contextPage,
      required this.nameArtist,
      required this.tagAlbum,
      required this.urlImage})
      : super(key: key);

  final BuildContext contextPage;
  final String nameArtist;
  final String tagAlbum;
  final String urlImage;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
          onTap: (() {
            Navigator.push(
              contextPage,
              MaterialPageRoute(
                  builder: (contextPage) =>
                      AlbumPage(tagAlbum: tagAlbum, urlAlbum: urlImage, artist: nameArtist)),
            );
          }),
          child: Hero(
            tag: tagAlbum,
            child:Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: Offset(0, 0)
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(top: Radius.circular(5), bottom: Radius.circular(0)),
                      child: Image.network(urlImage)
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tagAlbum, 
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            ),
                          ),
                          Text(
                            nameArtist,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w100,
                              color: Colors.grey,
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
            )
          )),
    );
  }
}
