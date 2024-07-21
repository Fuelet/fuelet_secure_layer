import 'dart:convert';

abstract class BackupUtils {
  static Future<String> streamToString(Stream<List<int>> stream) async {
    final bytes = await stream
        .fold<List<int>>(<int>[], (previous, chunk) => previous..addAll(chunk));
    return utf8.decode(bytes);
  }
}
