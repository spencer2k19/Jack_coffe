import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/colors.dart';

class HintInputWidget extends StatelessWidget {
  final String label;
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final FormFieldValidator<String>? validator;
  FormFieldSetter<String>? onSaved;
  final TextEditingController? controller;
  int maxLines;
  bool obscureText;
  String initialValues = '';
  Color textColor;
  int? maxLenght;
  Icon? icon;
  Function(String)? onChange;

  HintInputWidget(
      {Key? key,
        required this.label,
        required this.textInputAction,
        required this.keyboardType,
        this.validator,
        this.onSaved,
        this.controller,
        this.initialValues = '',
        this.obscureText = false,
        this.maxLines = 1,
        this.textColor = Colors.white,
        this.maxLenght,
        this.icon,
        this.onChange})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValues,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLines: maxLines,
      controller: controller,
      validator: this.validator,
      maxLength: maxLenght,
      onSaved: onSaved,
      onChanged: onChange,

      style: GoogleFonts.poppins(
        fontSize: 14,
        color: Colors.black,
      ),
      cursorColor: Colors.black,
      cursorWidth: 2,
      cursorHeight: 18,


      decoration: InputDecoration(
        fillColor: Colors.white,
        prefixIcon:icon,
        contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25),
        hintText: label,
        errorStyle:  GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 13
        ),
        hintStyle: GoogleFonts.poppins(
            color: Color(0xFF999CAD),
            fontWeight: FontWeight.w500,

        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: redColor,
              width: 1,

            )),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: redColor,
              width: 0.5,
            )),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: borderColor, width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Color(0xFFD8D8D8), width: 1)),
      ),
    );
  }
}