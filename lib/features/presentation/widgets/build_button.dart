import 'package:flutter/material.dart';
import 'package:healtypet_application/features/presentation/utils/text_style.dart';

class BuildButton extends StatelessWidget {
  const BuildButton(
      {super.key,
      required this.label,
      required this.color,
      required this.onTap,
      required this.icon,
      required this.borderColor,
      required this.textColor});

  final Widget icon;
  final String label;
  final Color color;
  final Color borderColor;
  final Color textColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              Text(
                label,
                style: text2(textColor, bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
