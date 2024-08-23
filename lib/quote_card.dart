import 'package:flutter/material.dart';
import "quote.dart";

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final  void Function () delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(20, 16, 16, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 6.0),
              TextButton.icon(
                  onPressed: delete,
                  label: Text("Delte Icon"),
                  icon: Icon(Icons.delete))
            ],
          ),
        ));
  }
}
