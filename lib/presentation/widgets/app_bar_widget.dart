import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 5,
          ),
          child: Text(
            title,
            style: appBarTextStyle,
          ),
        )),
        const Padding(
          padding: EdgeInsets.all(5),
          child: Icon(
            Icons.cast,
            color: primaryIconColor,
            size: 30,
          ),
        ),
        const SizedBox(width: 10),
        const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 20,
          ),
        ),
      ],
    );
  }
}
