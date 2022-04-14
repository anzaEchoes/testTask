import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback event;
  final String text;
  double height;
  Color? colorBackground = Color(0x00000000);
  Color? colorFont;
  double? radius;
  bool isBold;

  Button(
      {Key? key,
      required this.event,
      required this.text,
      this.colorBackground,
      this.colorFont = Colors.black,
      this.radius = 0,
      this.height = 35,
      this.isBold = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: height,
          decoration: BoxDecoration(
              color: colorBackground,
              borderRadius: BorderRadius.circular(radius!),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 5),
                    blurRadius: 5)
              ]),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 15,
                  color: colorFont,
                  fontWeight:
                      isBold == true ? FontWeight.bold : FontWeight.normal),
            ),
          )),
    );
  }
}
