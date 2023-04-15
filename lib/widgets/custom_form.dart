import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';
import 'package:insighttrack/widgets/auth_login_widget.dart';
import 'package:insighttrack/widgets/custom_button.dart';
import 'package:insighttrack/widgets/custom_textfield.dart';

import '../utils/image_constant.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({Key? key}) : super(key: key);

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _passwordVisible =false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Login",
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
              color: ColorConstant.primary,
              fontSize: getFontSize(60)
            ),
          ),
          SizedBox(height: getVerticalSize(45),),

          //Enter Username Text
          Padding(
            padding: getPadding(left: 85),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Enter Email/Username",
                style: TextStyle(
                  color: Color(0xff315034),
                  fontSize: 24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          //Email TextField
          CustomTextFormField(
            prefix: const Icon(Icons.person,color: Colors.black,),
            suffix: GestureDetector(
              onTap: (){},
              child: const Icon(Icons.cancel),
            ),
            width: getHorizontalSize(
              400,
            ),
            focusNode: FocusNode(),
            controller: emailController,
            hintText: "Email Address",
            margin: getMargin(
              right: 10,
              left: 10,
              bottom: 45,
            ),
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
          ),

          //Enter Password Text
          Padding(
            padding: getPadding(left: 85),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(
                  color: Color(0xff315034),
                  fontSize: 24,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          //Password TextField
          CustomTextFormField (
            width: getHorizontalSize(
              400,
            ),
            focusNode: FocusNode(),
            controller: passwordController,
            hintText: "Password",
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            suffix: GestureDetector(
              onTap: (){setState(() {
                _passwordVisible =!_passwordVisible;
              });},
              child: Container(
                child: Icon(_passwordVisible?Icons.visibility:Icons.visibility_off,),
              ),
            ),
            isObscureText: _passwordVisible,
            prefix: const Icon(Icons.lock,color: Colors.black),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Padding(
                padding: getPadding(right: 85,bottom: 45),
                child: GestureDetector(
                  onTap: (){},
                  child: Text(
                    "Forgot password?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Color(0xff315034),
                      fontSize: 13,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              )
            ],
          ),
          //Divider Code
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(
                  top: 8,
                  bottom: 6,
                ),
                child: SizedBox(
                  width: getHorizontalSize(
                    120,
                  ),
                  child: Divider(
                    color: ColorConstant.primary,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                    left: 27,
                    right : 20,
                    bottom: 5
                ),
                child: Text(
                  "Or login in with",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                  bottom: 6,
                ),
                child: SizedBox(
                  width: getHorizontalSize(
                    120,
                  ),
                  child: Divider(
                    color: ColorConstant.primary,
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: getPadding(top: 30,left:20,right: 20,bottom: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AuthLoginButton(ImagePath: ImageConstant.imgFacebook,),
                AuthLoginButton(ImagePath: ImageConstant.imgGoogle,),
                AuthLoginButton(ImagePath: ImageConstant.imgApple,),
              ],
            ),
          ),
          CustomButton(onTap: (){})
        ],
      ),
    );
  }
}
