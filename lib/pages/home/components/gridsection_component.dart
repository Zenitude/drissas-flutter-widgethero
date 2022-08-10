library gridsection_component;

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:my_app/pages/home/components/albumcover_component.dart';

class GridSection extends StatelessWidget {
  const GridSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: ResponsiveGridList(
        minSpacing: 10,
        desiredItemWidth: 150,
        children: [
          AlbumCover(contextPage: context,nameArtist: 'Mickael Jackson', tagAlbum: 'Triller',urlImage: 'https://static.qobuz.com/images/covers/24/12/0074643811224_600.jpg'),
          AlbumCover(contextPage: context,nameArtist: 'Lana Del Rey', tagAlbum: 'Born to die',urlImage: 'https://m.media-amazon.com/images/I/71v9YKQxm2L._SL1400_.jpg'),
          AlbumCover(contextPage: context,nameArtist: 'The Weeknd', tagAlbum: 'Starboy',urlImage: 'https://m.media-amazon.com/images/I/91AeHehM8SL._SL1500_.jpg'),
          AlbumCover(contextPage: context,nameArtist:'Maroon 5', tagAlbum: 'Song about Jane',urlImage: 'https://m.media-amazon.com/images/I/71i-GSPlL8L._SL1400_.jpg'),
        ],
      ),
    );
  }
}


