import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/common/tokens/typography.dart';
import 'package:tasks/ui/pages/home.dart';

class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  OurAppBar(
      {this.title = 'Tasks Managger',
      this.iconAppBarr = const Icon(Icons.add)});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: BRAND_PRIMARY,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
            icon: Icon(
              Icons.refresh,
              size: 50,
            ),
          ),
        )
      ],
      title: Text(
        this.title,
        key: Key('app-bar-title'),
        style: TextStyle(fontSize: H1_SIZE),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
