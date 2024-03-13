import 'dart:math';
import 'package:flutter/material.dart';
import 'package:quote_generator/quote_list.dart';

void main() {
  runApp(QuoteGeneratorApp());
}

class QuoteGeneratorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote Generator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: QuoteScreen(),
    );
  }
}

class QuoteScreen extends StatefulWidget {
  @override
  _QuoteScreenState createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {


  // Random number generator
  Random random = Random();

  // Variable to hold current quote
  String currentQuote = '';

  // Function to generate a random quote
  void generateQuote() {
    setState(() {
      int index = random.nextInt(quotes.length);
      currentQuote = quotes[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quote Generator'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                currentQuote,
                style: TextStyle(
                  fontSize: 20.0,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: generateQuote,
                child: Text('Generate Quote'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
