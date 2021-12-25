import 'package:flutter/material.dart';
import '../utilities/utilities.dart';

class CustomElevatedButtom extends StatelessWidget {
  const CustomElevatedButtom({
    required this.child,
    required this.onTap,
    this.textColor,
    this.buttonColor,
    this.borderRadius,
    Key? key,
  }) : super(key: key);
  final Widget child;
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
            vertical: Utilities.padding / 3,
            horizontal: Utilities.padding,
          ),
          decoration: BoxDecoration(
            color: buttonColor ?? Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(
              borderRadius ?? Utilities.buttonBorderRadius,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
