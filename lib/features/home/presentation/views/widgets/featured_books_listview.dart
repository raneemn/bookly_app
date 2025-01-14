import 'package:bookly_app/features/home/presentation/views/widgets/featured_listview_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListview extends StatelessWidget {
  const FeaturedBooksListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: FeaturedListviewItem(),
            );
          }),
    );
  }
}
