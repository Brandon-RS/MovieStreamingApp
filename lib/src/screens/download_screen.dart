import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/widgets/widgets.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  static const String routeName = 'downloads';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Download Movies',
          icon: Icons.search,
          onPressed: () => showAboutDialog(context: context),
        )
      ],
    );
  }
}
