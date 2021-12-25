import 'package:flutter/material.dart';
import '../utilities/utilities.dart';

class CustomCircularTextButtom extends StatelessWidget {
  const CustomCircularTextButtom({
    required this.text,
    required this.onTap,
    this.textColor,
    this.buttonColor,
    this.borderRadius,
    Key? key,
  }) : super(key: key);
  final String text;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? buttonColor;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: Utilities.padding / 2,
            horizontal: Utilities.padding,
          ),
          decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(
              borderRadius ?? Utilities.buttonBorderRadius,
            ),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: textColor ?? Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
