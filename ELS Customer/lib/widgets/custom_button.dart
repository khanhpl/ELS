import 'package:els/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      boxShadow: _setBoxShadow(),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll21:
        return getPadding(
          all: 21,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray100:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillPink300:
        return ColorConstant.pink300;
      case ButtonVariant.OutlineBluegray50:
        return ColorConstant.whiteA700;
      case ButtonVariant.OutlinePurple900:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillGray400:
        return ColorConstant.gray400;
      case ButtonVariant.FillBluegray50:
        return ColorConstant.bluegray50;
      case ButtonVariant.FillBlack90087:
        return ColorConstant.black90087;
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.purple900;
    }
  }

  _setBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray100:
        return Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700:
        return Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlinePurple900:
        return Border.all(
          color: ColorConstant.purple900,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillPink300:
      case ButtonVariant.FillPurple900:
      case ButtonVariant.OutlineBluegray50:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillBluegray50:
      case ButtonVariant.FillBlack90087:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder15:
        return BorderRadius.circular(
          getHorizontalSize(
            15.50,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            8.00,
          ),
        );
    }
  }

  _setBoxShadow() {
    switch (variant) {
      case ButtonVariant.OutlineBluegray50:
        return [
          BoxShadow(
            color: ColorConstant.bluegray50,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              1,
            ),
          )
        ];
      case ButtonVariant.OutlineBluegray100:
      case ButtonVariant.FillPink300:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.FillPurple900:
      case ButtonVariant.OutlinePurple900:
      case ButtonVariant.FillGray400:
      case ButtonVariant.FillBluegray50:
      case ButtonVariant.FillBlack90087:
        return null;
      default:
        return null;
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoRomanMedium15:
        return TextStyle(
          color: ColorConstant.gray700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.RobotoItalicThin17Black901:
        return TextStyle(
          color: ColorConstant.black901,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        );
      case ButtonFontStyle.RobotoRomanMedium15Purple900:
        return TextStyle(
          color: ColorConstant.purple900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
      case ButtonFontStyle.PoppinsBold22:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            22,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.RobotoRomanRegular15:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoItalicThin9:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            9,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        );
      case ButtonFontStyle.RobotoItalicThin17Bluegray400:
        return TextStyle(
          color: ColorConstant.bluegray400,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        );
      case ButtonFontStyle.RobotoRomanRegular13:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            17,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w100,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder8,
  RoundedBorder15,
}

enum ButtonPadding {
  PaddingAll10,
  PaddingAll17,
  PaddingAll21,
  PaddingAll4,
}

enum ButtonVariant {
  OutlineBluegray100,
  FillPink300,
  OutlineWhiteA700,
  FillPurple900,
  OutlineBluegray50,
  OutlinePurple900,
  FillGray400,
  FillBluegray50,
  FillBlack90087,
}

enum ButtonFontStyle {
  RobotoRomanMedium15,
  RobotoItalicThin17,
  RobotoItalicThin17Black901,
  RobotoRomanMedium15Purple900,
  PoppinsBold22,
  RobotoRomanRegular15,
  RobotoItalicThin9,
  RobotoItalicThin17Bluegray400,
  RobotoRomanRegular13,
}
