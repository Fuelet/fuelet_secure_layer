import 'package:flutter/material.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/check_widget.dart';

class CheckTile extends StatelessWidget {
  final String? text;
  final TextStyle? textStyle;
  final bool? initialValue;
  final VoidCallback onTap;
  final bool value;
  final Widget checkIconWidget;

  const CheckTile({
    super.key,
    this.text,
    this.textStyle,
    this.initialValue,
    required this.onTap,
    required this.value,
    required this.checkIconWidget,
  });

  @override
  Widget build(BuildContext context) {
    final widgetText = text;
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FLTCheckWidgets(
            onTap: () {},
            value: value,
            checkIconWidget: checkIconWidget,
          ),
          const SizedBox(width: 10),
          if (widgetText != null)
            Expanded(
              child: Text(
                widgetText,
                style: textStyle,
                textAlign: TextAlign.left,
              ),
            ),
        ],
      ),
    );
  }
}
