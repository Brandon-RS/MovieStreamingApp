import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/widgets/widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  static const String routeName = 'profile';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(
          title: 'Welcome to your Profile',
          icon: Icons.person,
          onPressed: () => print('Profile'),
        )
      ],
    );
  }
}
