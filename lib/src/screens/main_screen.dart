import 'package:flutter/material.dart';
import 'package:movie_streaming_app/src/providers/bottom_bar.dart';
import 'package:movie_streaming_app/src/routes/routes.dart';
import 'package:movie_streaming_app/src/widgets/widgets.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  static const String routeName = '/';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final padding = MediaQuery.of(context).padding;
    var bottombarProvider = Provider.of<BottomBarProvider>(context);

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF1c1a28),
                  Color(0xFF1e1c2a),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, padding.top, 0, 61),
            child: PageView(
              controller: pageController,
              onPageChanged: (page) {
                bottombarProvider.currentPage = page;
              },
              children: const [
                HomeScreen(),
                DownloadScreen(),
                CommunityScreen(),
                ProfileScreen(),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: CustomBottomBar(pageController: pageController),
          ),
        ],
      ),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var bottombarProvider = Provider.of<BottomBarProvider>(context);

    return Container(
      width: size.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(100, 64, 63, 70),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtomBarItem(
            index: 0,
            icon: Icons.home,
            onPressed: () {
              bottombarProvider.currentPage = 0;
              pageController.animateToPage(
                bottombarProvider.currentPage,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
          ButtomBarItem(
            index: 1,
            icon: Icons.download,
            onPressed: () {
              bottombarProvider.currentPage = 1;
              pageController.animateToPage(
                bottombarProvider.currentPage,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
          ButtomBarItem(
            index: 2,
            icon: Icons.group,
            onPressed: () {
              bottombarProvider.currentPage = 2;
              pageController.animateToPage(
                bottombarProvider.currentPage,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
          ButtomBarItem(
            index: 3,
            icon: Icons.person,
            onPressed: () {
              bottombarProvider.currentPage = 3;
              pageController.animateToPage(
                bottombarProvider.currentPage,
                curve: Curves.easeIn,
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
        ],
      ),
    );
  }
}
