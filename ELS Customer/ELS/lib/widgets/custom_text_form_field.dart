import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.padding,
      this.shape,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.controller,
      this.focusNode,
      this.isObscureText = false,
      this.textInputAction = TextInputAction.next,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.suffix,
      this.suffixConstraints,
      this.validator});

  TextFormFieldPadding? padding;

  TextFormFieldShape? shape;

  TextFormFieldVariant? variant;

  TextFormFieldFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  TextEditingController? controller;

  FocusNode? focusNode;

  bool? isObscureText;

  TextInputAction? textInputAction;

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
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: _setFontStyle(),
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        decoration: _buildDecoration(),
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
      border: _setBorderStyle(),
      enabledBorder: _setBorderStyle(),
      focusedBorder: _setBorderStyle(),
      disabledBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: _setFillColor(),
      filled: _setFilled(),
      isDense: true,
      contentPadding: _setPadding(),
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case TextFormFieldFontStyle.RobotoMedium20:
        return TextStyle(
          color: ColorConstant.black90089,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.OutfitMedium14:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        );
      case TextFormFieldFontStyle.RobotoItalicThin17:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlack9002a:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillWhiteA700:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      case TextFormFieldVariant.FillBlack9007e:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide.none,
        );
      default:
        return UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstant.bluegray50,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      case TextFormFieldVariant.OutlineBlack9002a:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case TextFormFieldVariant.FillBlack9007e:
        return ColorConstant.black9007e;
      default:
        return null;
    }
  }

  _setFilled() {
    switch (variant) {
      case TextFormFieldVariant.UnderLineBluegray50:
        return false;
      case TextFormFieldVariant.OutlineBlack9002a:
        return true;
      case TextFormFieldVariant.FillWhiteA700:
        return true;
      case TextFormFieldVariant.FillBlack9007e:
        return true;
      default:
        return false;
    }
  }

  _setPadding() {
    switch (padding) {
      case TextFormFieldPadding.PaddingTB16:
        return getPadding(
          left: 15,
          top: 15,
          right: 15,
          bottom: 16,
        );
      case TextFormFieldPadding.PaddingAll11:
        return getPadding(
          all: 11,
        );
      case TextFormFieldPadding.PaddingT14:
        return getPadding(
          left: 11,
          top: 14,
          right: 11,
          bottom: 11,
        );
      case TextFormFieldPadding.PaddingAll19:
        return getPadding(
          all: 19,
        );
      case TextFormFieldPadding.PaddingTB30:
        return getPadding(
          left: 16,
          top: 16,
          right: 16,
          bottom: 30,
        );
      default:
        return getPadding(
          left: 1,
          top: 1,
          right: 1,
          bottom: 13,
        );
    }
  }
}

enum TextFormFieldPadding {
  PaddingTB13,
  PaddingTB16,
  PaddingAll11,
  PaddingT14,
  PaddingAll19,
  PaddingTB30,
}

enum TextFormFieldShape {
  RoundedBorder10,
}

enum TextFormFieldVariant {
  UnderLineBluegray50,
  OutlineBlack9002a,
  FillWhiteA700,
  FillBlack9007e,
}

enum TextFormFieldFontStyle {
  RobotoRomanRegular17,
  RobotoMedium20,
  OutfitMedium14,
  RobotoItalicThin17,
}
