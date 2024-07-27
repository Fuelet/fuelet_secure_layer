import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

class FLTCheckWidgets extends StatelessWidget {
  final bool value;
  final VoidCallback onTap;
  final bool? initialValue;
  final Widget checkIconWidget;

  const FLTCheckWidgets({
    super.key,
    this.initialValue,
    required this.onTap,
    required this.value,
    required this.checkIconWidget,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 20,
        height: 20,
        padding: const EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: !value ? Colors.transparent : FLTColors.blue,
          border: value
              ? null
              : Border.all(
                  color: FLTColors.grey6D,
                  width: 1,
                ),
        ),
        child: !value ? null : checkIconWidget,
      ),
    );
  }
}
