import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: RandomWords(),
        theme: new ThemeData(          // Add the 3 lines from here... 
        primaryColor: Colors.white,
      ), 
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
    Widget build(BuildContext context) {
       return new Scaffold (                   // Add from here... 
      appBar: new AppBar(
        title: new Text('Startup Name Generator'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: _buildSuggestions(),
    ); 
    }
    void _pushSaved() {
       Navigator.of(context).push(
         new MaterialPageRoute<void>(   // Add 20 lines from here...
      builder: (BuildContext context) {
        final Iterable<ListTile> tiles = _saved.map(
          (WordPair pair) {
            return new ListTile(
              title: new Text(
                pair.asPascalCase,
                style: _biggerFont,
              ),
            );
          },
        );
        final List<Widget> divided = ListTile
          .divideTiles(
            context: context,
            tiles: tiles,
          )
          .toList();
          return new Scaffold(         // Add 6 lines from here...
          appBar: new AppBar(
            title: const Text('Saved Suggestions'),
          ),
          body: new ListView(children: divided),
        ); 
      },
    ),                        
    
  );
    }
      final List<WordPair>_suggestions = <WordPair>[];
      final TextStyle _biggerFont = const TextStyle(fontSize: 18.0); 
      final Set <WordPair> _saved = new Set<WordPair>();

    Widget _buildSuggestions() {
      return new ListView.builder(
        padding:const EdgeInsets.all(8.0),
        itemBuilder: (BuildContext _context, int i) {
          if(i.isOdd){
              return new Divider();
          }
          final int index = i ~/ 2;

          if(index >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }
            return _buildRow(_suggestions[index]);
        },
      );
    }

    Widget _buildRow(WordPair pair) {
      final bool alreadySaved = _saved.contains(pair);
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
      trailing: new Icon(   // Add the lines from here... 
      alreadySaved ? Icons.favorite : Icons.favorite_border,
      color: alreadySaved ? Colors.red : null,
    ),
    onTap: () {      // Add 9 lines from here...
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
      });
    },               
    );
  }
}