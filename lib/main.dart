import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

    List<Quote> quotes =[
        Quote(text: 'Lies, damned lies, and statistics',author: 'Mayur Doifode'),
        Quote(text: 'Good friends, good books, and a sleepy conscience: this is the ideal life.',author: 'Thomas Youg'),
        Quote(text: 'If you tell the truth, you don\'t have to remember anything.',author: 'Lee Cooper')
    ];
//    Widget quoteTemplate(quote){
//        return Padding(
//          padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
//
//          child: QuoteCard(quote: quote),
//        );
//    }
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
            children: quotes.map((quote) =>QuoteCard(
              quote: quote,
              delete:(){
                setState(() {
                  quotes.remove(quote);
                });
              }
            )).toList(),
        ),
    );
  }
}
