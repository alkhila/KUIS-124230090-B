import 'package:flutter/material.dart';
import 'package:template_quiz_si_b/models/game_model.dart';

class DetailPage extends StatelessWidget {
  final int index;
  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Column(
        children: [
          Text(GameModel.gameList[index].gameName),
          Text(GameModel.gameList[index].gamePublisher),
          Text(GameModel.gameList[index].gameDesc),
        ],
      ),
    );
  }
}
