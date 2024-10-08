import 'package:flutter/widgets.dart';
import 'package:fuelet_secure_layer/src/features/hardware_signer/presentation/ui/sensitive_data_overlay.dart';

class SensitiveDataWidget extends StatefulWidget {
  final Widget child;
  final String overlayText;
  final Function(bool isSensitiveDataShown)? sensitiveDataShownCallBack;

  const SensitiveDataWidget({
    super.key,
    required this.child,
    required this.overlayText,
    this.sensitiveDataShownCallBack,
  });

  @override
  State<SensitiveDataWidget> createState() => _SensitiveDataWidgetState();
}

class _SensitiveDataWidgetState extends State<SensitiveDataWidget> {
  bool _isHidden = true;

  void _onTap() {
    setState(() {
      _isHidden = false;
      widget.sensitiveDataShownCallBack?.call(true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Stack(
        children: [
          widget.child,
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: GestureDetector(
                onTap: _onTap,
                child: AnimatedOpacity(
                  opacity: _isHidden ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: SensitiveDataOverlay(
                    overlayText: widget.overlayText,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
