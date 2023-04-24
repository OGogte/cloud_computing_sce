import 'kpi_model.dart';
import 'package:flutter/material.dart';

class JournalPaper extends StatefulWidget {
  const JournalPaper({Key? key}) : super(key: key);

  @override
  State<JournalPaper> createState() => _JournalPaperState();
}

class _JournalPaperState extends State<JournalPaper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wow"),
      ),
      body:FutureBuilder(
        future: Papers().fetchJournalPaperData(5),
        builder: (BuildContext context, AsyncSnapshot<Papers> snapshot) {
          if (snapshot.hasError) print(snapshot.error);
          else if(!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else{
            print(snapshot.data!.t);
            return Text("Target of Journal ${snapshot.data!.t} & Journal Papers Achieved${snapshot.data!.a}");
          }
          return const Text("Something went wrong !!!!");
        },

      ),
    );
  }
}
