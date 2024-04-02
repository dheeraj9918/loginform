import 'package:flutter/material.dart';
import 'package:login_form/pallet.dart';
import 'package:svg_flutter/svg.dart';

class SocialButtons extends StatelessWidget {
  final String text;
  final String iconPath;
  final double horizontalPadding;
  const SocialButtons({
    super.key,
    required this.text,
    required this.iconPath,
    this.horizontalPadding =100,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        color: Pallete.whiteColor,
      ),
      label: Text(
        text,
        style: const TextStyle(fontSize: 17, color: Pallete.whiteColor),
      ),
      style: TextButton.styleFrom(
        padding:  EdgeInsets.symmetric(horizontal:horizontalPadding, vertical: 30),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Pallete.borderColor,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
