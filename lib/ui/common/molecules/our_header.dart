import 'package:flutter/material.dart';
import 'package:tasks/ui/common/tokens/colors.dart';
import 'package:tasks/ui/common/tokens/typography.dart';

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
