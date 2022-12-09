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
          title: 'Brandon',
          onPressed: () => showAboutDialog(context: context),
        ),
      ],
    );
  }
}
