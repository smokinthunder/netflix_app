import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/presentation/search/widgets/search_text_title.dart';
import 'package:netflix_app/presentation/widgets/main_card.dart';

const imageUrl =
    "https://www.themoviedb.org/t/p/w220_and_h330_face/se86cWSwdSftjJH8OStW7Yu3ZPC.jpg";

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Movies and TV"),
        const Gap(10),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 3,
            childAspectRatio: 6/9,
            children: List.generate(20, (index) {
              return const MainCard(imageUrl: imageUrl,);
            }),
          ),
        ),
      ],
    );
  }
}


