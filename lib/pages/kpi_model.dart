import 'package:insighttrack/pages/global_variables.dart';

import 'gsheet_services.dart';
import 'package:gsheets/gsheets.dart';

class KPI {
  String? nameOfFaculty;
  String? designation;
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
    Papers conferencePaper = Papers(t: int.tryParse(conference![0]),a: int.tryParse(conference[1]),type: "Conference");
    return conferencePaper;
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

  Future<Citations> fetchGoogleScholarCitationData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? gScholar = await sheet1Values?.row(rowid!,fromColumn:8,length: 3,);
    Citations gScholarCiation = Citations(t: int.tryParse(gScholar![0]),e: int.tryParse(gScholar[1]),a:int.tryParse(gScholar[2]),type: "Google Scholar");
    return gScholarCiation;
  }

  Future<Citations> fetchWoSCitationData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? woS = await sheet1Values?.row(rowid!,fromColumn:13,length: 2,);
    Citations wosCitation = Citations(t: int.tryParse(woS![0]),a:int.tryParse(woS[1]),type: "WoS");
    return wosCitation;
  }

  Future<Citations> fetchScopusCitationData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? scopus = await sheet1Values?.row(rowid!,fromColumn:11,length: 2,);
    Citations scopusCitation = Citations(t: int.tryParse(scopus![0]),a:int.tryParse(scopus[1]),type: "Scopus");
    return scopusCitation;
  }
}

class FundedProject {
  late final double? _t;
  late final double? _a;
  late final String? _type;

  FundedProject({double? t, double? a, String? type}){
    _t =t;
    _a =a;
    _type =type;
  }

  double? get t => _t;
  double? get a => _a;
  String? get type => _type;

  Future<FundedProject> fetchCountFundedData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? count = await sheet1Values?.row(rowid!,fromColumn:15,length: 2,);
    FundedProject countFunded = FundedProject(t: double.tryParse(count![0]),a:double.tryParse(count[1]),type: "Count");
    return countFunded;
  }

  Future<FundedProject> fetchAmountFundedData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? amount = await sheet1Values?.row(rowid!,fromColumn:17,length: 2,);
    FundedProject amountFunded = FundedProject(t: double.tryParse(amount![0]),a:double.tryParse(amount[1]),type: "Amount");
    return amountFunded;
  }
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

  Future<Consultancy> fetchCountConsultancyData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? count = await sheet1Values?.row(rowid!,fromColumn:19,length: 2,);
    Consultancy countFunded = Consultancy(t: double.tryParse(count![0]),a:double.tryParse(count[1]),type: "Count");
    return countFunded;
  }

  Future<Consultancy> fetchAmountConsultancyData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? amount = await sheet1Values?.row(rowid!,fromColumn:21,length: 2,);
    Consultancy amountFunded = Consultancy(t: double.tryParse(amount![0]),a:double.tryParse(amount[1]),type: "Amount");
    return amountFunded;
  }
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
  late final double? _t;
  late final double? _a;
  late final String? _type;

  IPR({double? t, double? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  double? get t => _t;
  double? get a => _a;
  String? get type => _type;

  Future<IPR> fetchPatentPubData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? patentPub = await sheet1Values?.row(rowid!,fromColumn:23,length: 2,);
    IPR patentPubIPR = IPR(t: double.tryParse(patentPub![0]),a:double.tryParse(patentPub[1]),type: "Patent Published");
    return patentPubIPR;
  }

  Future<IPR> fetchPatentGrantData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? patentGrant = await sheet1Values?.row(rowid!,fromColumn:25,length: 2,);
    IPR patentGrantIPR = IPR(t: double.tryParse(patentGrant![0]),a:double.tryParse(patentGrant[1]),type: "Patent Granted");
    return patentGrantIPR;
  }

  Future<IPR> fetchCopyrightData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? copyright = await sheet1Values?.row(rowid!,fromColumn:27,length: 2,);
    IPR copyrightIPR = IPR(t: double.tryParse(copyright![0]),a:double.tryParse(copyright[1]),type: "Copyright");
    return copyrightIPR;
  }
}

class WsFDPSTTP {
  int? t;
  int? a;
  String? type;

  WsFDPSTTP({this.t, this.a, this.type});
}
