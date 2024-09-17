import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:netflix_app/presentation/downloads/widgets/download_sections.dart';
import 'package:netflix_app/presentation/downloads/widgets/smart_downloads.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetlist = [const SmartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: "Downloads")),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          itemBuilder: (ctx, index) => _widgetlist[index],
          separatorBuilder: (ctx, index) => const Gap(25),
          itemCount: _widgetlist.length,
        ));
  }
}
