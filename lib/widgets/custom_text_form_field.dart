// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../core/app_export.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    Key? key,
    this.alignment,
    this.width,
    this.scrollPadding,
    this.controller,
    this.focusNode,
    this.autofocus = true,
    this.textStyle,
    this.obscureText = false,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.maxLines,
    this.hintText,
    this.hintStyle,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.contentPadding,
    this.borderDecoration,
    this.fillColor,
    this.filled = false,
    this.validator,
    this.inputFormatters,
    //required InputDecoration decoration,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? width;

  final TextEditingController? scrollPadding;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? autofocus;

  final TextStyle? textStyle;

  final bool? obscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final TextStyle? hintStyle;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final EdgeInsets? contentPadding;

  final InputBorder? borderDecoration;

  final Color? fillColor;

  final bool? filled;

  final FormFieldValidator<String>? validator;

  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.topRight,
            child: textFormFieldWidget(context),
          )
        : textFormFieldWidget(context);
  }

  Widget textFormFieldWidget(BuildContext context) => SizedBox(
        width: width ?? double.maxFinite,
        child: TextFormField(
          scrollPadding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          controller: controller,
          focusNode: focusNode ?? FocusNode(),
          autofocus: autofocus!,
          style: textStyle ??
              theme.textTheme.bodyMedium!.copyWith(
                fontSize: 20.0, // Set the desired font size
              ),
          obscureText: obscureText!,
          textInputAction: textInputAction,
          keyboardType: textInputType,
          maxLines: maxLines ?? 1,
          inputFormatters: inputFormatters,
          decoration: decoration,
          validator: validator,
        ),
      );
  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintStyle ?? theme.textTheme.bodyMedium,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.only(
              top: 2.v,
              right: 2.h,
              bottom: 2.v,
              left: 0.0,
            ),
        fillColor: fillColor,
        filled: filled,
        border: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                //color: appTheme.gray200,
                width: 1,
              ),
            ),
        enabledBorder: borderDecoration ??
            UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 1),
            ),
        focusedBorder: borderDecoration ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.h),
              borderSide: BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
      );
}
