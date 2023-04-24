import 'dart:convert';
import 'package:http/http.dart' as http;

class StudentModel {
  String? name;
  int? rollno;

  StudentModel({
     this.name,
     this.rollno,
  });

  factory StudentModel.fromMap(Map<String, dynamic> json) {
    return StudentModel(
      name: json['name'],
      rollno: json['rollno'],
    );
  }

  List<StudentModel> decodeStudent(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed
        .map<StudentModel>((json) => StudentModel.fromMap(json))
        .toList();
  }

  Future<List<StudentModel>> fetchStudent() async {
    final response = await http.get(Uri.parse('https://script.google.com/macros/s/AKfycbw7GYLf-54V4G5b_h8v9BNpiHqRGFSoPBDzsyZ_V_H_EPLTH4bJviIiJeGNlLWt2V_7/exec'));
    if (response.statusCode == 200) {
      print(response.body);
      return decodeStudent(response.body);
    } else {
      throw Exception('Unable to fetch data from the REST API');
    }
  }
}