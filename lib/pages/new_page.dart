import 'package:flutter/material.dart';
import 'package:insighttrack/student_model.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({Key? key, this.students}) : super(key: key);
  final Future<List<StudentModel>>? students;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: FutureBuilder<List<StudentModel>>(
            future: students,
            builder: (context, snapshot) {
              if (snapshot.hasError) print(snapshot.error);
              return snapshot.hasData
                  ? studentList(snapshot.data!)
                  : const Center(child: CircularProgressIndicator());
            },
          ),
        ));
  }
}

Widget studentList( List<StudentModel> studentList) {
  return ListView.builder(
      itemCount: studentList.length,
      itemBuilder: (context, index) {
        return Card(
            elevation: 5,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "|| ${studentList[index].name}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    '\n${studentList[index].rollno}',
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ));
      });
}
