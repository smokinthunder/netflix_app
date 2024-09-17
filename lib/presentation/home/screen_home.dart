import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/home/widgets/background_card.dart';
import 'package:netflix_app/presentation/home/widgets/horiz_tile.dart';
import 'package:netflix_app/presentation/home/widgets/numbered_title.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    const String titleImage =
        "https://image.tmdb.org/t/p/w600_and_h900_bestv2/7QMsOTMUswlwxJP0rTTZfmz2tX2.jpg";
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (BuildContext context, index, _) {
        return NotificationListener<UserScrollNotification>(
          onNotification: (notification) {
            final ScrollDirection direction = notification.direction;
            if (direction == ScrollDirection.reverse) {
              scrollNotifier.value = false;
            } else if (direction == ScrollDirection.forward) {
              scrollNotifier.value = true;
            }
            return true;
          },
          child: Stack(
            children: [
              ListView(
                children: const [
                  BackgroundCard(titleImage: titleImage),
                  HorizTile(
                    title: "Released in the past year",
                  ),
                  HorizTile(
                    title: "Trending Now",
                  ),
                  NumberedTile(),
                  HorizTile(
                    title: "Tense Dramas",
                  ),
                  HorizTile(
                    title: "South Indian Cinemas",
                  ),
                ],
              ),
              scrollNotifier.value
                  ? AnimatedContainer(
                    duration: const Duration(seconds: 1),
                      height: 90,
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.8),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Image.network(
                                "https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fcdn.wccftech.com%2Fwp-content%2Fuploads%2F2016%2F06%2Fnetflix.png&f=1&nofb=1&ipt=a123f73a0e919322f2e53a072bc3dadca7c58dd9ac76f811e67b7ff32ca4d7c7&ipo=images",
                                width: 60,
                                height: 60,
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: Icon(
                                  Icons.cast,
                                  color: primaryIconColor,
                                  size: 30,
                                ),
                              ),
                              const Gap(10),
                              const Padding(
                                padding: EdgeInsets.all(5),
                                child: CircleAvatar(
                                  backgroundColor: Colors.pink,
                                  radius: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "TV Shows",
                                style: boldTextStyle,
                              ),
                              Text(
                                "Movies",
                                style: boldTextStyle,
                              ),
                              Text(
                                "Categories",
                                style: boldTextStyle,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  : const SizedBox(height: 10,),
            ],
          ),
        );
      },
    ));
  }
}
