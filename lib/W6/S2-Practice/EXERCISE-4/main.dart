import 'package:flutter/material.dart';
import 'jokes.dart';

void main() {
  runApp(const JokeApp());
}

class JokeApp extends StatelessWidget {
  const JokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Jokes'),
        ),
        body: const JokeList(),
      ),
    );
  }
}

class JokeList extends StatefulWidget {
  const JokeList({super.key});

  @override
  _JokeListState createState() => _JokeListState();
}

class _JokeListState extends State<JokeList> {
  int? _bestJokeIndex;

  void _setBestJoke(int index) {
    setState(() {
      _bestJokeIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: jokes.length,
      itemBuilder: (context, index) {
        return JokeCard(
          joke: jokes[index],
          isBest: _bestJokeIndex == index,
          onFavoriteClick: () => _setBestJoke(index),
        );
      },
    );
  }
}

class JokeCard extends StatelessWidget {
  final Joke joke;
  final bool isBest;
  final VoidCallback onFavoriteClick;

  const JokeCard({
    super.key,
    required this.joke,
    required this.isBest,
    required this.onFavoriteClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(joke.content),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              isBest ? Icons.favorite : Icons.favorite_border,
              color: isBest ? Colors.red : Colors.grey,
            ),
            onPressed: onFavoriteClick,
          ),
        ],
      ),
    );
  }
}