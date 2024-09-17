import 'package:flutter/material.dart';
import 'package:netflix_app/core/themes.dart';

class SearchTextTitle extends StatelessWidget {
  const SearchTextTitle({
    required this.title,
    super.key,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: headingStyle,
        textAlign: TextAlign.right,
      ),
    );
  }
}