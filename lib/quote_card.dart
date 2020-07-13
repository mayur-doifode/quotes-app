import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            Text(
              '--${quote.author}',
              style: TextStyle(
                  fontSize: 10.0
              ),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('delete'),
            )
          ],
        ),
      ),
    );
  }
}
