import 'package:gsheets/gsheets.dart';

class GsheetsAPI{
  late final String? _spreadsheet;
  late final String? _sheetName;
  GsheetsAPI({String? spreadsheet,String? sheetName}){
    _spreadsheet = spreadsheet;
    _sheetName = sheetName;
  }
  String? get spreadsheet => _spreadsheet;
  String? get sheetName => _sheetName;
  final _credentials = r'''
{
  "type": "service_account",
  "project_id": "gsheets-384206",
  "private_key_id": "471931baed5c9d671aa96dd37fc39f2349406405",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQC+NE7fSpxiHeiA\nsVrc5xVn/k/cDQu8xkvJAXuLcMQQxCYL2WqNQmdOiDvuACaKEOwZlzR2VN35eSzC\nou5rpN6FT77MIzAru0kQXdYNbrp2Pz0Yz6MpWXSi2rIbQMIltGnJlhd5rx0W/AcS\nP7j6cj8wC9jQc6g7xMaqrzdqSdbzwYE6Qir6uioBN81d1F9zYiIep0EZYeNEgU1F\n/ktJv422uVIQA2mlX0/UegQbLX+LB5l3x+CUXdYvz49L1If7XQ6QB0uOExOfVbtj\nfsT4+Yx7ip0IGtdVS3aIwYkd6b1kkxt6VwHRc6ggTL34h4sxleHsAMtHhvkHJApL\nqBe/iDStAgMBAAECggEAQ+agkY4tLcnHisnFyj6koa9kCwaNPiL8QxHIbQsgs2uS\nuYAwTaV7A8oWuuxK1dccsjYMgIHjjH/5vrIzszH0Tlsdnfqh47rEZpdZJwp0fmot\nAYJ+mPBadxjjpF8F8Dfr3A886i/djqsCSz18Z8wJSrmv+RqQ4GVrFtveSI97sSCx\nmpz3UmYjkO/1AsCmc3dRYfv8ikOekN8eo/oFzO3iN6JZXW7BC2Jbg+Tf8PbuCKIy\nNj9Z+yyLZGR7Xgp5baXmX1wPSeRW/O9cf0BfWioFyeYJXjNKgQH89Sfym6xgmZqY\nxjlRQwPf9nB1kYft0qLxEPIiHNkGmzbmwvn2RQmv8QKBgQDpN62qT98hlwqYTaHX\n62aaqMEA8n3UZl9cNbQpdMQlJrOXvG5S6tz5VaQtNkM98/ga1XaMtc9LKHaS4jYA\n0iqTNrMLpPGoLJNjrE9zrbPV0J6Hrfip86n3YqOMInywFoqm3gLwND58z1mSPHrL\nUB96hKjormGJHb820lRUm45MkwKBgQDQyPP7y1DKn8w9TklGk/Sl8+SagjCDERqj\nQPPYfOyJX0IpJl5Z+hEqWj2oyUQUVqzPYaeuAQ/v/dnt/Djyp3nHqrYWFzj1FdBJ\n/M97BWc9j+AZVRfL6AmZgbbJE8Wt9ME3+5a7vMCJyU7HC8dthlQuMy4vNCOEb7Os\nt/OXCH2BvwKBgQCUSfHj1At1qTt0YhBhYW2JM3odJxL5JerGj+MxZOx/Dt+swISJ\ntoqxA1Jz6QfScbk1HrvVdpkLGfxjIvDhjsDBgEtSQRvjKgzBmMOgMzeg4ZibfvQY\n5DUTdqW1KgyMTpj0xz+pCh8dbx5uDISrmBOb7JQV9yNPcxmtOwmiDpLpfwKBgQDE\nl9QVjhafFOTt/R9GU98TvJnPWzNu1tYsTubNPKRFnergcH57Xtp29M4Gdq2iMRM7\nmwqW7+0f3/oq+0psQoKLHhWiq284Z7ffUyvS/P1/nFA5ykRD/lO7tcZ1hCapbEPc\nAQyn7k2l8GY7Sr4YRVpSvmKIlCG1fLDEu9mkp5v2ZQKBgQCnGlxTsN1nS0ZYzF8o\nWeD8P/aukYPFpLhB1pP8kqpFHbu2KzJ2EdwjDpHHx2+6DMaVRw3YW4Fb0ikJRYvF\ncqbpwO73mvREglHhcKG0d2El06Pqpbe1SRDHukHIYpML38kswikaGGAMVEN8GXkA\nThouz89QB2cOkb/c8xdhEiu1OA==\n-----END PRIVATE KEY-----\n",
  "client_email": "gsheetsflutter@gsheets-384206.iam.gserviceaccount.com",
  "client_id": "105231894322758956128",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/gsheetsflutter%40gsheets-384206.iam.gserviceaccount.com"
}
''';

  Future<Worksheet?> connectToSheets() async{
    final gsheets = GSheets(_credentials);
    // fetch spreadsheet by its id
    final ss = await gsheets.spreadsheet(_spreadsheet!);
    var sheet =ss.worksheetByTitle(_sheetName!);
    return sheet;
  }
  /*Future<Worksheet?> getSheet(Spreadsheet ss,String? sheetName) async{
    var sheet = ss.worksheetByTitle(sheetName!);
    return sheet;
  }*/
}