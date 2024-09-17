import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/downloads/widgets/button_downloads.dart';
import 'package:netflix_app/presentation/downloads/widgets/downloads_image_widget.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ButtonDownloads(text: "Set up"),
        Gap(20),
        ButtonDownloads(
          text: "See what you can download",
          secondary: true,
        ),
      ],
    );
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List<String> imageUrls = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/se86cWSwdSftjJH8OStW7Yu3ZPC.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/vSN8lYtYdMl97LeY8iSvXUT0pEX.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/7Ns6tO3aYjppI5bFhyYZurOYGBT.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Text(
          
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: headingStyle,
        ),
        Text(
          "We will download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device.",
          textAlign: TextAlign.center,
          style: paraStyle,
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: size.width * .38,
                backgroundColor: secondaryBackgroundColor.withOpacity(.5),
              ),
              DownloadsImageWidget(
                margin: const EdgeInsets.only(right: 150, bottom: 50),
                imageUrl: imageUrls[0],
                angle: -20,
              ),
              DownloadsImageWidget(
                margin: const EdgeInsets.only(left: 150, bottom: 50),
                imageUrl: imageUrls[1],
                angle: 20,
              ),
              DownloadsImageWidget(
                margin: const EdgeInsets.only(left: 0, bottom: 20),
                imageUrl: imageUrls[2],
                scale: .025,
                angle: 0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}