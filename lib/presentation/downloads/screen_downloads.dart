import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});
  final List<String> imageUrls = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/se86cWSwdSftjJH8OStW7Yu3ZPC.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/vSN8lYtYdMl97LeY8iSvXUT0pEX.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/7Ns6tO3aYjppI5bFhyYZurOYGBT.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(title: "Downloads")),
      body: ListView(
        children: [
          const SmartDownloads(),
          const Text("Introducing Downloads for you"),
          const Text(
              "We will download a personalised selection of movies and shows for you, so there is always something to watch on your device."),
          SizedBox(
            height: size.width,
            width: size.width,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * .37,
                  backgroundColor: Colors.blueGrey,
                ),
                DownloadsImageWidget(margin: const EdgeInsets.only(right: 150,bottom: 50), imageUrl: imageUrls[0],angle: -20,),
                DownloadsImageWidget(margin: const EdgeInsets.only(left: 150,bottom: 50), imageUrl: imageUrls[1],angle: 20,),
                DownloadsImageWidget(margin: const EdgeInsets.only(left: 0,bottom: 20), imageUrl: imageUrls[2],angle: 0,),
              ],
            ),
          ),
          MaterialButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text("Set up"),
          ),
          MaterialButton(
            onPressed: () {},
            color: buttonColor,
            child: const Text("See what you can download"),
          )
        ],
      ),
    );
  }
}

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(Icons.settings, color: primaryIconColor),
        Text("Smart downloads")
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
   const DownloadsImageWidget({
    super.key,
    required this.imageUrl,
    required this.margin,
    this.angle=0
  });

  final String imageUrl;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * .58,
        width: size.width * .4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: NetworkImage(imageUrl)),
        ),
      ),
    );
  }
}
