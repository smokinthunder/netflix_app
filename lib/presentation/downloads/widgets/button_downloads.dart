import 'package:flutter/material.dart';
import 'package:netflix_app/core/colors/colors.dart';
import 'package:netflix_app/core/themes.dart';

class ButtonDownloads extends StatelessWidget {
  const ButtonDownloads({
    required this.text,
    this.secondary = false,
    super.key,
  });
  final String text;
  final bool secondary;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: secondary? 30:0),
      child: SizedBox(
        width: double.infinity,     
        
        child: MaterialButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: secondary ? secondaryButtonColor : buttonColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(text,
                style: buttonTextStyle.copyWith(
                    color: secondary ? altTextColor : primaryTextColor)),
          ),
        ),
      ),
    );
  }
}