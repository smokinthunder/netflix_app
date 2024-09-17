import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/search/widgets/search_text_title.dart';

String imageUrl =
    "https://www.themoviedb.org/t/p/w355_and_h200_multi_faces/yDHYTfA3R0jFYba16jBB1ef8oIt.jpg";

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches"),
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (ctx, index) => const TopSearchItemTile(),
            separatorBuilder: (ctx, index) => const Gap(20),
            itemCount: 10,
          ),
        )
      ],
    );
  }
}



class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * .35,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Gap(10),
        Expanded(child: Text("Deadpool And Wolverine", style: paraStyle)),
        const CircleAvatar(
          radius: 25,
          backgroundColor: primaryIconColor,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: altIconColor,
            child: Icon(
              CupertinoIcons.play_fill,
              color: primaryIconColor,
            ),
          ),
        ),
      ],
    );
  }
}
