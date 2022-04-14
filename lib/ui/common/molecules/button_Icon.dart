import 'package:flutter/material.dart';
import 'package:tasks/ui/common/atoms/our_text.dart';

// ignore: must_be_immutable
class ButtonIcon extends StatelessWidget {
  final VoidCallback event;
  final String text;
  double height;
  double width;
  Color? colorBackground = Colors.white;
  Color? colorFont;
  double? radius;
  IconData? icon;

  ButtonIcon(
      {Key? key,
      required this.event,
      required this.text,
      this.width = 110,
      this.height = 40,
      this.colorBackground = Colors.white,
      this.colorFont = Colors.black,
      this.radius = 0,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: event,
      child: Container(
          width: width,
          padding: const EdgeInsets.all(5),
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
          child: Row(
            children: [
              Flexible(
                  flex: 3,
                  child: H1(
                    text: text,
                  )),
              Flexible(
                flex: 1,
                child: Icon(
                  icon,
                  size: 30,
                ),
              )
            ],
          )),
    );
  }
}
