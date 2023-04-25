import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/image_constant.dart';
import '../utils/size_utils.dart';
class KPI_PAGE extends StatelessWidget {
  const KPI_PAGE({Key? key}) : super(key: key);

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
            children: [
              Text("KPI's For You",style: GoogleFonts.ooohBaby(fontWeight: FontWeight.bold,fontSize: 77),),
            ],
          )
        ),
      ),
    );
  }
}
