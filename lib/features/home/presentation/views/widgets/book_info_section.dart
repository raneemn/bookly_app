import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'book_actions.dart';
import 'book_rating.dart';

class BookInfoSection extends StatelessWidget {
  const BookInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipting',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 16,
        ),
        const BookActions(),
      ],
    );
  }
}
