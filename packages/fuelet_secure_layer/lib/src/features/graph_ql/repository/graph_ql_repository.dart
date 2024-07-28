import 'package:graphql/client.dart';

abstract class GraphQLRepository {
  Future<QueryResult> query(
    String link,
    String query,
    Map<String, dynamic> parameters,
  );
}
