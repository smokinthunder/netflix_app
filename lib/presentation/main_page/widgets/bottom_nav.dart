import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, int newIndex, _) {
        return BottomNavigationBar(
          currentIndex: newIndex,
          onTap: (index) => indexChangeNotifier.value = index,
          selectedItemColor: bottomNavigationBarSelectedTextColor,
          unselectedItemColor: bottomNavigationBarUnselectedTextColor,
          type: BottomNavigationBarType.fixed,
          backgroundColor: backgroundColor,
          selectedIconTheme: const IconThemeData(color: bottomNavigationBarSelectedIconColor),
          unselectedIconTheme: const IconThemeData(color: bottomNavigationBarUnselectedIconColor),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: "New & Hot"),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: "Fast Laugh"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: "Downloads"),
          ],
        );
      },
    );
  }
}
