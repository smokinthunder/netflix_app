import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';
import 'package:netflix_app/presentation/search/widgets/search_idle.dart';

class ScreenSearch extends StatelessWidget {
  const ScreenSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              CupertinoSearchTextField(
                backgroundColor: secondaryBackgroundColor.withOpacity(.4),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: secondaryIconColor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: secondaryIconColor,
                ),
                style: paraStyle.copyWith(color: primaryTextColor),
              ),
              // const Expanded(child: SearchIdle()),
              const Expanded(child: SearchIdle()),
            ],
          ),
        ),
      ),
    );
  }
}
