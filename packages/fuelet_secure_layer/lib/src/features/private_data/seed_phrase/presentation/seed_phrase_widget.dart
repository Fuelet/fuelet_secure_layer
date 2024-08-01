import 'package:flutter/material.dart';
import 'package:fuelet_secure_layer/src/features/private_data/seed_phrase/presentation/seed_phrase_column.dart';
import 'package:fuelet_uikit/fuelet_uikit.dart';

class SeedPhraseWidget extends StatelessWidget {
  final List<String> phrase;

  const SeedPhraseWidget({
    super.key,
    required this.phrase,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: NFTTheme.of(context).colorScheme.backgroundColorAccent,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: SeedPhraseColumn(
              words: phrase.sublist(0, 6),
            ),
          ),
          Expanded(
            child: SeedPhraseColumn(
              startCountingFrom: 7,
              words: phrase.sublist(6, 12),
            ),
          )
        ],
      ),
    );
  }
}
