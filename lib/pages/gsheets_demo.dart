import 'package:gsheets/gsheets.dart';
import 'kpi_model.dart';

/// Your google auth credentials
///
/// how to get credentials - https://medium.com/@a.marenkov/how-to-get-credentials-for-google-sheets-456b7e88c430
const _credentials = r'''
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

/// Your spreadsheet id
///
/// It can be found in the link to your spreadsheet -
/// link looks like so https://docs.google.com/spreadsheets/d/YOUR_SPREADSHEET_ID/edit#gid=0
/// [YOUR_SPREADSHEET_ID] in the path is the id your need
const _spreadsheetId = '1s-HADGFzOCwCjY27KTwIMgLjat_9G_JTvqVqhUqOAg4';

void main() async {
  // init GSheets
  final gsheets = GSheets(_credentials);
  // fetch spreadsheet by its id
  final ss = await gsheets.spreadsheet(_spreadsheetId);

  /*print(ss.data.namedRanges.byName.values
      .map((e) => {
    'name': e.name,
    'start':
    '${String.fromCharCode((e.range?.startColumnIndex ?? 0) + 97)}${(e.range?.startRowIndex ?? 0) + 1}',
    'end':
    '${String.fromCharCode((e.range?.endColumnIndex ?? 0) + 97)}${(e.range?.endRowIndex ?? 0) + 1}'
  })
      .join('\n'));

  // get worksheet by its title
  var sheet = ss.worksheetByTitle('Sheet1');
  // create worksheet if it does not exist yet
  sheet ??= await ss.addWorksheet('Sheet1');

  // update cell at 'B2' by inserting string 'new'
  await sheet.values.insertValue('new', column: 2, row: 2);
  // prints 'new'
  print(await sheet.values.value(column: 2, row: 2));
  // get cell at 'B2' as Cell object
  final cell = await sheet.cells.cell(column: 2, row: 2);
  // prints 'new'
  print(cell.value);
  // update cell at 'B2' by inserting 'new2'
  await cell.post('new2');
  // prints 'new2'
  print(cell.value);
  // also prints 'new2'
  print(await sheet.values.value(column: 2, row: 2));

  // insert list in row #1
  final firstRow = ['index', 'letter', 'number', 'label'];
  await sheet.values.insertRow(1, firstRow);
  // prints [index, letter, number, label]
  print(await sheet.values.row(1));

  // insert list in column 'A', starting from row #2
  final firstColumn = ['0', '1', '2', '3', '4'];
  await sheet.values.insertColumn(1, firstColumn, fromRow: 2);
  // prints [0, 1, 2, 3, 4, 5]
  print(await sheet.values.column(1, fromRow: 2));

  // insert list into column named 'letter'
  final secondColumn = ['a', 'b', 'c', 'd', 'e'];
  await sheet.values.insertColumnByKey('letter', secondColumn);
  // prints [a, b, c, d, e, f]
  print(await sheet.values.columnByKey('letter'));

  // insert map values into column 'C' mapping their keys to column 'A'
  // order of map entries does not matter
  final thirdColumn = {
    '0': '1',
    '1': '2',
    '2': '3',
    '3': '4',
    '4': '5',
  };
  await sheet.values.map.insertColumn(3, thirdColumn, mapTo: 1);
  // prints {index: number, 0: 1, 1: 2, 2: 3, 3: 4, 4: 5, 5: 6}
  print(await sheet.values.map.column(3));

  // insert map values into column named 'label' mapping their keys to column
  // named 'letter'
  // order of map entries does not matter
  final fourthColumn = {
    'a': 'a1',
    'b': 'b2',
    'c': 'c3',
    'd': 'd4',
    'e': 'e5',
  };
  await sheet.values.map.insertColumnByKey(
    'label',
    fourthColumn,
    mapTo: 'letter',
  );
  // prints {a: a1, b: b2, c: c3, d: d4, e: e5, f: f6}
  print(await sheet.values.map.columnByKey('label', mapTo: 'letter'));

  // appends map values as new row at the end mapping their keys to row #1
  // order of map entries does not matter
  final secondRow = {
    'index': '5',
    'letter': 'f',
    'number': '6',
    'label': 'f6',
  };
  await sheet.values.map.appendRow(secondRow);
  // prints {index: 5, letter: f, number: 6, label: f6}
  print(await sheet.values.map.lastRow());

  // get first row as List of Cell objects
  final cellsRow = await sheet.cells.row(1);
  // update each cell's value by adding char '_' at the beginning
  cellsRow.forEach((cell) => cell.value = '_${cell.value}');
  // actually updating sheets cells
  await sheet.cells.insert(cellsRow);
  // prints [_index, _letter, _number, _label]
  print(await sheet.values.row(1));*/

  Worksheet? sheet1 = ss.worksheetByTitle('KPI_Industry');
  /*print(ss.data.namedRanges.byName.values
      .map((e) => {
    'name': e.name,
    'start':
    '${String.fromCharCode((e.range?.startColumnIndex ?? 0) + 97)}${(e.range?.startRowIndex ?? 0) + 1}',
    'end':
    '${String.fromCharCode((e.range?.endColumnIndex ?? 0) + 97)}${(e.range?.endRowIndex ?? 0) + 1}'
  })
      .join('\n'));*/

  final faculty_name = await sheet1?.values.valueByKeys(
    columnKey: '5',
    rowKey: '7'
  );
  /*print("faculty_name = $faculty_name");
  print(await sheet1?.values.column(5, fromRow: 4,length: 16));*/

  final map = await sheet1?.values.map.rowByKey("LOl",fromColumn: 2);
  /*print(map);*/

  //print(await sheet1?.values.row(9,fromColumn: 2,length: 33));



  final ss1 = await gsheets.spreadsheet(_spreadsheetId);
  final sheet = ss1.worksheetByTitle('KPI_Research_Sheet')?.values;
  /*print(await sheet?.row(5,fromColumn: 1,length:39));
  for(int i=7;i<23;i++)
    {
      List<String>? faculty_data = await sheet?.row(i,length: 40);
      print(faculty_data.runtimeType);
    }*/
  Papers papers = await Papers().fetchJournalPaperData(7);
  print(Papers().fetchJournalPaperData(7));
  print(papers.t);
  print(papers.type);

}
