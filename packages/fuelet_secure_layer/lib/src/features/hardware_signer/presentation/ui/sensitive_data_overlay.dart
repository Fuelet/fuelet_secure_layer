import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fuelet_uikit/fuelet_uikit.dart';

class SensitiveDataOverlay extends StatelessWidget {
  final String overlayText;

  const SensitiveDataOverlay({
    super.key,
    required this.overlayText,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 5.0,
          sigmaY: 5.0,
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: FLTColors.lightBackground.withOpacity(0.86),
          ),
          child: Center(
            child: Text(
              overlayText,
              textAlign: TextAlign.center,
              style: NFTTypography.body2SemiBold.copyWith(
                color: FLTColors.grey6D,
                height: 24 / 15,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
