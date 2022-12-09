import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.icon, this.onPressed}) : super(key: key);

  final String title;
  final IconData icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: Row(
        children: [
          Container(
            color: Colors.red,
            width: 4,
            height: 25,
            margin: const EdgeInsets.only(right: 10),
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          const Expanded(child: SizedBox()),
          IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
