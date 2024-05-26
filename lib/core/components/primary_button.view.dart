import 'package:flutter/material.dart';

enum ImperioButtonViewModel { primary, secondary }

class ImperioButton extends StatelessWidget {
  final String? text;
  final double height;
  final double? width;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Widget? icon;
  final double? distanceToBorder;
  final double? borderWidth;
  final Color? borderColor;
  final Color? textColor;
  final ImperioButtonViewModel model;

  const ImperioButton({
    super.key,
    this.text,
    required this.height,
    required this.onPressed,
    required this.backgroundColor,
    this.icon,
    this.distanceToBorder,
    this.textColor,
    this.model = ImperioButtonViewModel.primary,
    this.borderWidth,
    this.borderColor,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      child: Container(
        height: height,
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: model == ImperioButtonViewModel.secondary
              ? Border.all(
                  color: borderColor ?? Colors.black, width: borderWidth ?? 1)
              : null,
          borderRadius: BorderRadius.circular(24),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              if (distanceToBorder != null) ...[
                SizedBox(width: distanceToBorder!)
              ],
              if (icon != null) ...[
                Flexible(
                  child: icon!,
                ),
              ],
              if (text != null) ...[
                Expanded(
                  child: Center(
                    child: Text(
                      text!,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: textColor ?? Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
              if (distanceToBorder != null) ...[
                SizedBox(width: distanceToBorder!),
              ],
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
