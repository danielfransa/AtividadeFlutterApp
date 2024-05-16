import 'package:flutter/material.dart';
import 'package:navagation_and_form/models/initial_page_model.dart';

class DetailWidget extends StatelessWidget {
  // ignore: non_constant_identifier_names
  const DetailWidget({super.key, required this.feed, required Feed Feed});

  final Feed feed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Page')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              feed.imageUrl,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                feed.title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                feed.subtitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
