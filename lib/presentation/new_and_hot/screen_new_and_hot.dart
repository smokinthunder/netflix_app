import 'package:flutter/material.dart';
import 'package:netflix_app/presentation/widgets/app_bar_widget.dart';

class ScreenNewAndHot extends StatelessWidget {
  const ScreenNewAndHot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Column(
          children: [
            AppBarWidget(title: "New and Hot"),
            TabBar(
              tabs: [
                Tab(text: " Coming soon"),
                Tab(text: "Hot"),
              ],
            ),
          ],
        ),
        
      ),
      body: Center(child: Text("New and Hot Page")),
    );
  }
}
