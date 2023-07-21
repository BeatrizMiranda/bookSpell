import 'package:bookspell/components/BookCard/BookCard.dart';
import 'package:flutter/material.dart';

class BooksCarousel extends StatefulWidget {
  BooksCarousel({Key? key}) : super(key: key);

  @override
  _BooksCarouselState createState() => _BooksCarouselState();
}

class _BooksCarouselState extends State<BooksCarousel> {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            child: BookCard(),
          );
        },
      ),
    );
  }
}
