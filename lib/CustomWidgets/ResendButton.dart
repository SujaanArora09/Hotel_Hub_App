import 'package:flutter/material.dart';

import '../utils/Constants.dart';


class IfNotButton extends StatelessWidget {
  final String message;
  final String action;
  final VoidCallback onClick;
  const IfNotButton({
    super.key,
    required this.onClick,
    required this.message,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: bodyText14w600(color: black),
              ),
              addHorizontalySpace(4),
              Text(
                action,
                style: bodyText14Bold(color: yellow),
              )
            ],
          ),
          addVerticalSpace(15)
        ],
      ),
    );
  }
}