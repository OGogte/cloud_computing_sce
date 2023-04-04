import 'package:flutter/material.dart';
import 'package:insighttrack/utils/color_constant.dart';
import 'package:insighttrack/utils/size_utils.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {
        this.alignment,
        this.width,
        this.margin,
        this.controller,
        this.focusNode,
        this.isObscureText = false,
        this.textInputAction = TextInputAction.next,
        this.textInputType = TextInputType.text,
        this.maxLines,
        this.hintText,
        this.prefix,
        this.prefixConstraints,
        this.suffix,
        this.suffixConstraints,
        this.validator});


  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

  TextInputType? textInputType;

  int? maxLines;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  Widget? suffix;

  BoxConstraints? suffixConstraints;

  FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
      alignment: alignment ?? Alignment.center,
      child: _buildTextFormFieldWidget(),
    )
        : _buildTextFormFieldWidget();
  }

  _buildTextFormFieldWidget() {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        textAlignVertical: TextAlignVertical.center,
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      contentPadding: EdgeInsets.fromLTRB(20, 0, 0, 0),
      hintText: hintText ?? "",
      hintStyle: _setHintFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      filled: _setFilled(),
      fillColor: ColorConstant.bgDark,
      isDense: true,
    );
  }

  _setFontStyle() {
    return TextStyle(
      color: ColorConstant.primary,
      fontSize: getFontSize(
        20,
      ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      /*height: getVerticalSize(
        2.00,
      ),*/
    );
  }
  _setHintFontStyle() {
    return TextStyle(
      color: ColorConstant.secondary,
      fontSize: getFontSize(
        20,
      ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w300,
      /*height: getVerticalSize(
        2.00,
      ),*/
    );
  }

  _setBorderStyle() {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(8)
    );
  }

  _setFilled() {
    return true;
  }
}