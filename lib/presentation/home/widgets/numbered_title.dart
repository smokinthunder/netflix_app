import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/home/widgets/number_card.dart';

class NumberedTile extends StatelessWidget {
  const NumberedTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Top 10 TV Shows in India",
          style: headingStyle,
        ),
        const Gap(10),
        LimitedBox(
          maxHeight: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(10, (index) {
              return NumberCard(index: index,);
            }),
          ),
        )
      ],
    );
  }
}