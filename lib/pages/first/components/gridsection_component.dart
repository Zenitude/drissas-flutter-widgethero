library gridsection_component;

import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:my_app/pages/first/components/albumcover_component.dart';

class GridSection extends StatelessWidget {
  const GridSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ResponsiveGridList(
        minSpacing: 10,
        desiredItemWidth: 150,
        children: [
          AlbumCover(contextPage: context,tagName: 'album-image1',urlImage: 'https://m.media-amazon.com/images/I/51UtWpxbNYL._SX466_.jpg'),
          AlbumCover(contextPage: context,tagName: 'lana-del-ray',urlImage: 'https://m.media-amazon.com/images/I/71v9YKQxm2L._SL1400_.jpg'),
          AlbumCover(contextPage: context,tagName: 'weekend',urlImage: 'https://m.media-amazon.com/images/I/91AeHehM8SL._SL1500_.jpg'),
          AlbumCover(contextPage: context,tagName: 'maroon-5',urlImage: 'https://m.media-amazon.com/images/I/71i-GSPlL8L._SL1400_.jpg'),
        ],
      ),
    );
  }
}


