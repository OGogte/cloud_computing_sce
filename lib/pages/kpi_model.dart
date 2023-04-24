import 'package:insighttrack/pages/global_variables.dart';

import 'gsheet_services.dart';
import 'package:gsheets/gsheets.dart';

class KPI {
  String? nameofFaculty;
  String? Designation;
  List<Papers>? papers;
  List<Citations>? citations;
  List<FundedProject>? fundedProject;
  List<Consultancy>? consultancy;
  List<IPR>? iPR;
  Books? books;
  BooksChapter? bookChapter;
  List<WsFDPSTTP>? wsFDPSTTP;
  ResearchInternMent? researchInternMent;
  CenterofExcellence? centerOfExcellence;

  KPI(
      {this.papers,
      this.citations,
      this.fundedProject,
      this.consultancy,
      this.iPR,
      this.books,
      this.bookChapter,
      this.wsFDPSTTP,
      this.researchInternMent,
      this.centerOfExcellence,
      });
  
  Future<Worksheet?> sheet = GsheetsAPI(spreadsheet: gv_spreadsheet).connectToSheets(gv_sheetname);
}

class Papers {
  late final int? _t;
  late final int? _a;
  late final String? _type;

  Papers({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<Papers> fetchJournalPaperData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? journal = await sheet1Values?.row(rowid!,fromColumn:4,length: 2,);
    Papers journalPaper = Papers(t: int.tryParse(journal![0]),a: int.tryParse(journal[1]),type: "Journal");
    return journalPaper;
  }
  Future<Papers> fetchConferencePaperData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? conference = await sheet1Values?.row(rowid!,fromColumn:6,length: 2,);
    Papers journalPaper = Papers(t: int.tryParse(conference![0]),a: int.tryParse(conference[1]),type: "Conference");
    return journalPaper;
  }

}

class Citations {
  late final int? _t;
  late final int? _a;
  late final String? _type;
  late final int? _e;

  Citations({int? t, int? a, int? e,String? type}){
    _t =t;
    _a =a;
    _e =e;
    _type =type;
  }
  int? get t => _t;
  int? get a => _a;
  int? get e => _e;
  String? get type => _type;
}

class FundedProject {
  late final int? _t;
  late final double? _a;
  late final String? _type;

  FundedProject({int? t, double? a, String? type}){
    _t =t;
    _a =a;
    _type =type;
  }

  int? get t => _t;
  double? get a => _a;
  String? get type => _type;
}

class Consultancy {
  late final double? _t;
  late final double? _a;
  late final String? _type;

  Consultancy({double? t, double? a, String? type})
  {
    _t =t;
    _a =a;
    _type =type;
  }
  double? get t => _t;
  double? get a => _a;
  String? get type => _type;
}

class Books {
  int? t;
  int? a;

  Books({this.t, this.a});
}

class BooksChapter {
  int? t;
  int? a;

  BooksChapter({this.t, this.a});
}

class ResearchInternMent {
  int? t;
  int? a;

  ResearchInternMent({this.t, this.a});
}

class CenterofExcellence {
  int? t;
  int? a;

  CenterofExcellence({this.t, this.a});
}

class IPR {
  int? t;
  int? a;
  String? type;

  IPR({this.t, this.a, this.type});

}

class WsFDPSTTP {
  int? t;
  int? a;
  String? type;

  WsFDPSTTP({this.t, this.a, this.type});
}
