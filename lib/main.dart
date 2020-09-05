import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'quote.dart';
import 'quoteCard.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(text: 'I am a billionaire', author: 'kotiko'),
    Quote(text: 'I am a Senior Engineer', author: 'Eyezo')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () => setState(() => quotes.remove(quote))))
            .toList(),
      ),
    );
  }
}
