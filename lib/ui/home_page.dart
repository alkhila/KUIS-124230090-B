import 'package:flutter/material.dart';
import 'package:template_quiz_si_b/ui/detail_page.dart';
import 'package:template_quiz_si_b/ui/login_page.dart';
import 'package:template_quiz_si_b/models/game_model.dart';

class HomePage extends StatelessWidget {
  final String username;
  const HomePage({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome,',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text('$username', style: TextStyle(fontSize: 14)),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginPage();
                  },
                ),
                (route) => false,
              );
            },
            icon: Icon(Icons.login_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemBuilder: (context, index) {
                    return _gameModel(context, index);
                  },
                  itemCount: GameModel.gameList.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _gameModel(context, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)));
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(GameModel.gameList[index].gameImg),
            ),
            Text(GameModel.gameList[index].gameName),
            Text(GameModel.gameList[index].gamePublisher),
            Text(GameModel.gameList[index].gameDesc),
          ],
        ),
      ),
    );
  }
}
