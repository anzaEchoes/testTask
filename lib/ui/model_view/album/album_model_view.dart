import 'package:flutter/material.dart';
import 'package:tasks/ui/common/atoms/our_image.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/common/tokens/typography.dart';

class AlbumModelView extends StatelessWidget {
  final String? url;
  final String? title;
  final String? description;

  AlbumModelView({this.url, this.title, this.description});
  @override
  Widget build(BuildContext context) {
    final element = Container(
      height: 150,
      decoration: const BoxDecoration(color: SCALE_01),
      margin: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OurImage(url: url, widthImage: 150, heightImage: 150),
          Column(
            children: [
              Container(
                width: 200,
                padding: const EdgeInsets.fromLTRB(10, 2, 10, 0),
                child: Text(
                  title!,
                  key: const Key('title-album-api'),
                  style: const TextStyle(fontSize: H2_SIZE),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(9),
                child: Text(description!),
              ),
            ],
          )
        ],
      ),
    );

    return element;
  }
}
