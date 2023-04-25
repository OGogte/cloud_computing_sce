import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../utils/size_utils.dart';
class ReportTile extends StatelessWidget {
  final String? title;
  final DateTime? dateofCreation;
  final String? report_category;
  final String? status;
  final String? description;
  const ReportTile({Key? key,this.title,this.dateofCreation,this.report_category,this.status,this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).primaryColor),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      height: 20,
      width: 20,
      child: Padding(
        padding: getPadding(all: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!,style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 5,),
            Text(DateFormat('yyyy-MM-dd – hh:mm').format(dateofCreation!) as String,style: Theme.of(context).textTheme.bodySmall,),
            Expanded(
              child: Text(
                description!,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Chip(
                  backgroundColor:statusChipColor(status!),
                  label: Text(
                    status!,
                    style: const TextStyle(fontSize: 10),
                  ), //Text
                ),
                SizedBox(width: getHorizontalSize(10),),
                Chip(
                  backgroundColor:categoryChipColor(report_category!),
                  label: Text(
                    report_category!,
                    style: TextStyle(fontSize: 10),
                  ), //Text
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Color categoryChipColor(String report_category){
    switch(report_category){
      case "Sexual Harassment" : return Colors.lightBlue;
      case "Discrimination" : return Colors.yellow;
      case "Other" :return Colors.green;

    }
    return Colors.lightBlue;

  }

  Color statusChipColor(String status){
    switch(status){
      case "received" : return Colors.lightBlue;
      case "working" : return Colors.yellow;
      case "waiting_for_confirmation" :return Colors.green;
      case "closed": return Colors.blueGrey;
    }
    return Colors.lightBlue;

  }
}