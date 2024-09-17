import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/widgets/main_card.dart';

class HorizTile extends StatelessWidget {
  final String title;
  const HorizTile({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(20),
        Text(
          title,
          style: headingStyle,
        ),
        const Gap(10),
        SizedBox(
          height: 200,
          width: double.infinity,
          child: GridView.count(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            crossAxisCount: 1,
            childAspectRatio: 9 / 6,
            children: List.generate(20, (index) {
              return const MainCard(
                imageUrl:
                    "https://www.themoviedb.org/t/p/w220_and_h330_face/se86cWSwdSftjJH8OStW7Yu3ZPC.jpg",
              );
            }),
          ),
        ),
      ],
    );
  }
}