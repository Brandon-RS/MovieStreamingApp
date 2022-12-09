import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/providers/bottom_bar.dart';
import 'package:provider/provider.dart';

class ButtomBarItem extends StatelessWidget {
  const ButtomBarItem({
    Key? key,
    this.activeColor,
    this.inactiveColor,
    required this.icon,
    this.onPressed,
    required this.index,
  }) : super(key: key);

  final int index;
  final Color? activeColor;
  final Color? inactiveColor;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    var bottomBarProvider = Provider.of<BottomBarProvider>(context);
    int page = bottomBarProvider.currentPage;

    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: index == page ? activeColor ?? Colors.white : inactiveColor ?? Colors.grey,
      ),
    );
  }
}
