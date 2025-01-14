import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_listview_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [CustomAppBar(), CustomListviewItem()],
    );
  }
}
