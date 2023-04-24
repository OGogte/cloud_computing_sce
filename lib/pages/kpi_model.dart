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
  late final int? _t;
  late final int? _a;
  late final String? _type;

  Books({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<Books> fetchOrganizedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? Count = await sheet1Values?.row(rowid!,fromColumn:29,length: 2,);
    Books CountB = Books(t: int.tryParse(Count![0]),a: int.tryParse(Count[1]),type: "Count");
    return CountB;
  }
}

class BooksChapter {
  late final int? _t;
  late final int? _a;
  late final String? _type;

  BooksChapter({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<BooksChapter> fetchOrganizedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? Chapters = await sheet1Values?.row(rowid!,fromColumn:31,length: 2,);
    BooksChapter ChaptersB = BooksChapter(t: int.tryParse(Chapters![0]),a: int.tryParse(Chapters[1]),type: "Chapters");
    return ChaptersB;
  }
}

class ResearchInternMent {
  late final int? _t;
  late final int? _a;
  late final String? _type;

  ResearchInternMent({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<ResearchInternMent> fetchOrganizedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? Result = await sheet1Values?.row(rowid!,fromColumn:39,length: 2,);
    ResearchInternMent ResultRIM = ResearchInternMent(t: int.tryParse(Result![0]),a: int.tryParse(Result[1]),type: "Result");
    return ResultRIM;
  }
}

class CenterofExcellence {
  late final int? _t;
  late final int? _a;
  late final String? _type;

  CenterofExcellence({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<CenterofExcellence> fetchOrganizedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? Performance = await sheet1Values?.row(rowid!,fromColumn:41,length: 2,);
    CenterofExcellence PerformanceCOF = CenterofExcellence(t: int.tryParse(Performance![0]),a: int.tryParse(Performance[1]),type: "Performance");
    return PerformanceCOF;
  }
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
  late final int? _t;
  late final int? _a;
  late final String? _type;

  WsFDPSTTP({int? t, int? a, String? type}){
    _t = t;
    _a = a;
    _type = type;
  }

  int? get t => _t;
  int? get a => _a;
  String? get type => _type;

  Future<WsFDPSTTP> fetchOrganizedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? organized = await sheet1Values?.row(rowid!,fromColumn:33,length: 2,);
    WsFDPSTTP organizedWsFDPSTTP = WsFDPSTTP(t: int.tryParse(organized![0]),a: int.tryParse(organized[1]),type: "Organized");
    return organizedWsFDPSTTP;
  }
  Future<WsFDPSTTP> fetchAttendedWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? attended = await sheet1Values?.row(rowid!,fromColumn:35,length: 2,);
    WsFDPSTTP attendedWsFDPSTTP = WsFDPSTTP(t: int.tryParse(attended![0]),a: int.tryParse(attended[1]),type: "Attended");
    return attendedWsFDPSTTP;
  }
  Future<WsFDPSTTP> fetchResourcePersonWsFDPSTTPData(int? rowid) async {
    Worksheet? sheet1 = await KPI().sheet;
    WorksheetAsValues? sheet1Values = sheet1?.values;
    List<String>? resourcePerson = await sheet1Values?.row(rowid!,fromColumn:37,length: 2,);
    WsFDPSTTP resourceWsFDPSTTP = WsFDPSTTP(t: int.tryParse(resourcePerson![0]),a: int.tryParse(resourcePerson[1]),type: "Resource Person");
    return resourceWsFDPSTTP;
  }
}
