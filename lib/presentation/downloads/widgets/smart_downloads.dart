import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
          child: Icon(Icons.settings, color: primaryIconColor),
        ),
        
        Text("Smart downloads",style: boldTextStyle,)
      ],
    );
  }
}