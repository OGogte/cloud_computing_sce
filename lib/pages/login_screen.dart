import 'package:flutter/material.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/image_constant.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Left Decoration
        Expanded(
            child: Container(
              decoration: BoxDecoration(gradient: ColorConstant.greenWhite),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.40,
                    height: MediaQuery.of(context).size.height*0.90,
                    decoration: BoxDecoration(color: ColorConstant.primary,borderRadius: const BorderRadius.only(topLeft: Radius.circular(12),bottomLeft: Radius.circular(12))),
                    child: Column(
                      children: [
                        Image.asset(
                          ImageConstant.imgLogo,
                          width: MediaQuery.of(context).size.width*0.25,
                          height: MediaQuery.of(context).size.width*0.10,
                        ),
                        Image.asset(
                          ImageConstant.imgLoginVector,
                          width: MediaQuery.of(context).size.width*0.25,
                          height: MediaQuery.of(context).size.width*0.30,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
        ),

        //Right Decoration
        Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      ImageConstant.imgBackground),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.40,
                    height: MediaQuery.of(context).size.height*0.90,
                    decoration: BoxDecoration(color: ColorConstant.customwhite,borderRadius: const BorderRadius.only(topRight: Radius.circular(12),bottomRight: Radius.circular(12))),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}
