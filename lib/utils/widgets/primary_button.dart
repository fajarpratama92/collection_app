import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  final double? sizeWidth;
  final double? sizeHeight;
  final double? borderRadiusSize;
  final Color? borderSideColor;
  final Color? colorButton;
  final Color? textColor;
  final double? fontSize;
  final double? elevation;
  final double? letterSpacing;
  final bool? isDisable;

  const PrimaryButton(
      {Key? key,
      this.text,
      this.onPressed,
      this.sizeWidth,
      this.sizeHeight,
      this.borderRadiusSize,
      this.borderSideColor,
      this.colorButton,
      this.textColor,
      this.fontSize,
      this.elevation,
      this.letterSpacing,
      this.isDisable})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisable ?? false ? null : onPressed,
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all(
          Size(sizeWidth ?? double.infinity, sizeHeight ?? 50),
        ),
        backgroundColor: MaterialStateProperty.all(!(isDisable ?? false)
            ? colorButton ?? Colors.lightGreenAccent
            : Colors.grey),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusSize ?? 27),
          ),
        ),
        side: MaterialStateProperty.all(
          BorderSide(
              color: !(isDisable ?? false)
                  ? borderSideColor ?? Colors.lightGreenAccent
                  : Colors.grey),
        ),
        elevation: MaterialStateProperty.all(elevation ?? 2),
      ),
      child: Center(
        child: Text(
          text ?? "",
          style: TextStyle(
              color: !(isDisable ?? false)
                  ? textColor ?? Colors.black
                  : Colors.grey,
              fontSize: fontSize ?? 14,
              fontFamily: 'D-DIN Exp',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
