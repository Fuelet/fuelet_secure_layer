import 'package:flutter/material.dart';
import 'package:fuelet_uikit/fuelet_uikit.dart';

class SeedPhraseColumn extends StatelessWidget {
  final int startCountingFrom;
  final List<String> words;

  const SeedPhraseColumn({
    super.key,
    required this.words,
    this.startCountingFrom = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < words.length; i++)
          Row(
            children: [
              SizedBox(
                width: 30,
                child: Text(
                  '${i + startCountingFrom}.',
                  style: NFTTypography.header6w500.copyWith(
                    color: const Color(0xff575760), // TODO: hardcoded value
                    height: 32 / 19,
                  ),
                ),
              ),
              Text(
                words[i],
                style: NFTTypography.header6w500.copyWith(
                  color: NFTTheme.of(context).colorScheme.coloredText,
                  height: 32 / 19,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
