abstract class QueryStorage {
  static const getContract = '''
query getContract(\$contractId: ContractId!) {
  contract(id: \$contractId) {
    id
  }
}
''';
}
