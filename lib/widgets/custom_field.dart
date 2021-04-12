import 'package:client_app/constants/colors_constants.dart';
import 'package:client_app/constants/fonts_constants.dart';
import 'package:flutter/material.dart';
import 'package:client_app/config/sizes.dart';

class CustomField extends StatelessWidget {
  final String hint;
  final double hintSize;
  final TextEditingController fieldController;
  final bool obscureText;
  final Widget prefix;
  final Widget suffix;
  final double vertical;
  final Function validate;
  final Function onChanged;
  final Function onSubmit;
  final bool readOnly;
  final bool autoValidate;
  final bool errorText;
  final TextInputType keyboardType;
  CustomField({
    this.hint,
    this.hintSize,
    this.fieldController,
    this.obscureText = false,
    this.prefix,
    this.suffix,
    this.vertical,
    this.validate,
    this.onChanged,
    this.onSubmit,
    this.readOnly = false,
    this.autoValidate,
    this.errorText = false,
    this.keyboardType = TextInputType.name,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: fieldController,
      readOnly: readOnly,
      style: TextStyle(
        color: AppColor.black,
        fontSize: AppFont.xLarge,
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        isDense: true,
        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey02),
          borderRadius: BorderRadius.circular(3.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.grey02),
          borderRadius: BorderRadius.circular(3.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.red.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(3.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.red),
          borderRadius: BorderRadius.circular(3.0),
        ),
        hintText: hint,
        hintStyle: TextStyle(
            color: AppColor.grey01.withOpacity(0.45), fontSize: AppFont.xLarge),
        prefixIcon: prefix,
        suffixIcon: suffix,
        errorStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: AppFont.xLarge,
            height: errorText ? 0.0 : null),
      ),
      autovalidateMode:
          autoValidate ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: validate,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
    );
  }
}
