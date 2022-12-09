import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/routes/routes.dart';
import 'package:provider/provider.dart';

import 'src/providers/bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomBarProvider(), lazy: false),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // initialRoute: HomeScreen.routeName,
        initialRoute: '/',
        routes: getAplicationRoutes(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
