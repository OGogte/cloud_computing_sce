import 'package:flutter/material.dart';
import 'package:insighttrack/utils/color_constant.dart';

class AuthLoginButton extends StatelessWidget {
  final String ImagePath;
  const AuthLoginButton({Key? key,required this.ImagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 50,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
          SizedBox(
            width: 90,
            height: 50,
            child: Material(
              color: ColorConstant.bgDark,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.black ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12, ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:[
                    Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Image.asset(ImagePath)
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}