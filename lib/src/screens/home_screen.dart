import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          icon: Icons.search,
          title: 'Welcome Back Brandon',
          onPressed: () => showAboutDialog(context: context),
        ),
        const UpcomingMovies(),
        const Categories(),
      ],
    );
  }
}

class UpcomingMovies extends StatelessWidget {
  const UpcomingMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Upcoming Movies',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const UpcomingMovieItem(
                image: 'https://i.pinimg.com/originals/5b/da/c7/5bdac7e55bbe77d5de08118c4e5dd059.jpg',
                title: 'Sample Title',
                subTitle: 'Short description ... :)',
              );
            },
          ),
        ),
      ],
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: const Text(
                  'Sample',
                  style: TextStyle(color: Colors.white),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
