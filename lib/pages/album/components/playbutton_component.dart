library playbutton_component;

import 'package:flutter/material.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.black
      ),
      width: 75,
      height: 75,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.play_arrow,
          color: Colors.white,
          size: 50,
        )
      )
    );
  }
}
