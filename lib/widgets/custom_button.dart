import 'package:flutter/material.dart';
import 'package:insighttrack/pages/SideBarX.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage2()));
      },
      child: Container(
        margin: getMargin(top: 20),
        width:getHorizontalSize(210),
        height: getVerticalSize(61),
        decoration: BoxDecoration(
          color: ColorConstant.primary,
          borderRadius: BorderRadius.circular(4)
        ),
        child: Center(
          child: Text(
            "Login",
            /*textAlign: TextAlign.center,*/
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w400,
              color: ColorConstant.customwhite,
              fontSize: getFontSize(24)
            ),
          ),
        ),
      ),
    );
  }
}
