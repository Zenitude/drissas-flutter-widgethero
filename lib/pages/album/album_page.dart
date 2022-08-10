library album_page;

import 'package:flutter/material.dart';
import 'package:my_app/widgets/appbar_widget.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key, required this.tagAlbum, required this.urlAlbum})
      : super(key: key);

  final String tagAlbum;
  final String urlAlbum;

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const MyAppBar(title: 'AlbumPage', color: Colors.black),
        body: Hero(
          tag: widget.tagAlbum,
          child: Image.network(widget.urlAlbum),
        ));
  }
}
