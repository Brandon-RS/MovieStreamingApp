import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/widgets/widgets.dart';

class CommunityScreen extends StatelessWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  static const String routeName = 'community';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Community',
          icon: Icons.search,
          onPressed: () => showAboutDialog(context: context),
        )
      ],
    );
  }
}
