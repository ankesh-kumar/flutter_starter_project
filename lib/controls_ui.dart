import 'package:flutter/material.dart';

import 'hex_color.dart';
import 'space_ui.dart';

class ThemedButton extends StatelessWidget {
  final Widget? child;
  final VoidCallback? onPressed;
  final String? text;
  final Color? bgColor;
  final Color? txtColor;
  final TextStyle? textStyle;

  const ThemedButton(
      {Key? key,
      this.textStyle,
      this.onPressed,
      this.text,
      this.child,
      this.bgColor,
      this.txtColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RoundedContainer(
        height: 48,
        containerBGColor: bgColor ?? HexColor('589ec9'),
        child: text == null
            ? child
            : Center(
                child: Text(
                  text ?? '',
                  style: textStyle ??
                      TextStyle(fontSize: 14, color: txtColor ?? Colors.white),
                ),
              ),
      ),
    );
  }
}

class ThemedTextField extends StatelessWidget {
  final String? text;
  final TextEditingController tec;
  final bool? isObscure;
  final double? height;
  final double? cPadding;
  const ThemedTextField(
      {Key? key,
      this.text,
      this.isObscure,
      required this.tec,
      this.height,
      this.cPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      child: TextField(
        obscureText: isObscure ?? false,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28.0),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[500]),
            hintText: text,
            contentPadding: EdgeInsets.all(cPadding ?? 16.0),
            fillColor: Colors.white70),
      ),
    );
  }
}

Widget errorPlaque({required String message, required Color color}) {
  return Builder(builder: (context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        color: color,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Flexible(
                    child: Text(message,
                        style: TextStyle(color: Theme.of(context).errorColor))),
              ],
            ),
          ),
        ),
      ),
    );
  });
}
