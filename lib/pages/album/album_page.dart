library album_page;

import 'package:flutter/material.dart';
import 'package:my_app/pages/album/components/playbutton_component.dart';
import 'package:my_app/pages/album/components/titleartist_component.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage(
      {Key? key,
      required this.tagAlbum,
      required this.urlAlbum,
      required this.artist})
      : super(key: key);

  final String tagAlbum;
  final String urlAlbum;
  final String artist;

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white.withOpacity(0.2),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.favorite),
              color: Colors.white,
              onPressed: () {},
            )
          ],
        ),
        body: Hero(
          tag: widget.tagAlbum,
          child: Column(
            children: [
              Image.network(widget.urlAlbum),
              Container(
                height: 150,
                color: Colors.purple,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TitleArtist(album: widget.tagAlbum, artist: widget.artist,),
                      const PlayButton(),
                    ]),
              )
            ],
          ),
        ));
  }
}
