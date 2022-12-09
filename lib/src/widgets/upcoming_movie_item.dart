import 'package:flutter/material.dart';

class UpcomingMovieItem extends StatelessWidget {
  const UpcomingMovieItem({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    const double width = 180;

    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: width,
      child: Stack(
        children: [
          Image.network(
            image,
            fit: BoxFit.cover,
            height: 300,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              color: Colors.white.withOpacity(0.75),
              height: 60,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 32, 30, 30), fontWeight: FontWeight.w500, fontSize: 18),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(color: Color.fromARGB(255, 32, 30, 30), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
