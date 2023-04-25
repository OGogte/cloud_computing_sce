import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageConstant.imgBackground),
                fit:BoxFit.cover
            )
        ),
        child: Padding(
          padding: getPadding(all: 20),
          child: Column(
            /*mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,*/
            children: [
              Text("Analytics Page For You",style: GoogleFonts.ooohBaby(fontWeight: FontWeight.bold,fontSize: 77),),
            ],
          )
        ),
      ),
    );
  }
}
