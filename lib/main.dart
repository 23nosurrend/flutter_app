import 'package:flutter/material.dart';
import "quote.dart";

void main() {
  runApp(MaterialApp(
    home: QuotesLists(),
  ));
}

class QuotesLists extends StatefulWidget {
  @override
  State<QuotesLists> createState() => _QuotesState();
}

class _QuotesState extends State<QuotesLists> {
  List<Quote> quotes = [
    Quote(
        text: "The greatest war are person , embrace them with passion",
        author: "K biz"),
    Quote(
        text: "Proving that it is your passion does not work like magic ",
        author: "K biz")
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin:EdgeInsets.fromLTRB(16, 16, 16,0),
      child:Column(
        children: [
          Text(
            quote.text,
            style:TextStyle(
              fontSize: 20,
              color:Colors.grey
            )
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList()),
    );
  }
}
