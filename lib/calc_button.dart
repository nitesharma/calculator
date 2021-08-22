import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({
    Key? key,
    required this.buttonText,
    this.textColor,
    required this.onPressed,
    required this.boxShape,
    required this.buttonWidth,
  }) : super(key: key);

  final String buttonText;
  final Color? textColor;
  final Function() onPressed;
  final NeumorphicBoxShape boxShape;
  final double buttonWidth;

  @override
  _CalcButtonState createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: widget.onPressed,
      style: NeumorphicStyle(
        shape: NeumorphicShape.flat,
        depth: 6,
        shadowDarkColor: Colors.grey.shade500,
        lightSource: LightSource.topLeft,
        boxShape: widget.boxShape,
        color: Color(0xffEDEBEC),
        //oppositeShadowLightSource: true,
      ),
      child: Container(
        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / widget.buttonWidth,
        child: Center(
          child: Text(
            widget.buttonText,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
