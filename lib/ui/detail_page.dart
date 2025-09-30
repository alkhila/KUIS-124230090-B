import 'package:flutter/material.dart';
import 'package:template_quiz_si_b/models/game_model.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final GameModel game;
  const DetailPage({super.key, required this.index, required this.game});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" ")),
      body: Column(
        children: [
          Image.asset(
            GameModel.gameList[index].gameImg,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20),
          Text(
            GameModel.gameList[index].gameName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),
          Text('RIot Game : ${GameModel.gameList[index].gamePublishDate}'),
          const SizedBox(height: 10),
          Row(
            children: [
              Text('${GameModel.gameList[index].totalLike} Likes'),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
            ],
          ),
          const SizedBox(height: 10),
          Text(GameModel.gameList[index].gameDesc),
        ],
      ),
    );
  }
}
