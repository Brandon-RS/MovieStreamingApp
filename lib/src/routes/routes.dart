import 'package:flutter/material.dart';

// !Screens Imports
import 'package:movie_streaming_app/src/screens/community_screen.dart';
import 'package:movie_streaming_app/src/screens/download_screen.dart';
import 'package:movie_streaming_app/src/screens/home_screen.dart';
import 'package:movie_streaming_app/src/screens/main_screen.dart';
import 'package:movie_streaming_app/src/screens/profile_screen.dart';

// !Screens Exports
export 'package:movie_streaming_app/src/screens/community_screen.dart';
export 'package:movie_streaming_app/src/screens/download_screen.dart';
export 'package:movie_streaming_app/src/screens/home_screen.dart';
export 'package:movie_streaming_app/src/screens/main_screen.dart';
export 'package:movie_streaming_app/src/screens/profile_screen.dart';

Map<String, WidgetBuilder> getAplicationRoutes() => <String, WidgetBuilder>{
      MainScreen.routeName: (BuildContext context) => const MainScreen(),
      HomeScreen.routeName: (BuildContext context) => const HomeScreen(),
      DownloadScreen.routeName: (BuildContext context) => const DownloadScreen(),
      CommunityScreen.routeName: (BuildContext context) => const CommunityScreen(),
      ProfileScreen.routeName: (BuildContext context) => const ProfileScreen(),
    };
