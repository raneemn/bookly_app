import 'package:bookly_app/core/utils/stryles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/featured_listview_item.dart';
import 'widgets/featured_books_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListview(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Stryles.textMedium,
          )
        ],
      ),
    );
  }
}
