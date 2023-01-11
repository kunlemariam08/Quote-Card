import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';


// import 'quote_card.dart';

void main() => runApp(const MaterialApp(
    home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
     Quote(author: "oscar wilde", text: "Be yourself, everyone else is already taken"),
     Quote(author: "oscar wilde", text: "I have nothing to declare except my genius"),
     Quote(author: "oscar wilde", text: "The truth is rarely pure and simple"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>  QuoteCard(
            quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
       ),
    );
  }
}


