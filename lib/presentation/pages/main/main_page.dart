import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinastic/config/constants/app_colors.dart';
import 'package:kinastic/config/constants/local_data.dart';
import 'package:kinastic/presentation/pages/coach/coach_page.dart';
import 'package:kinastic/presentation/pages/explore/explore_page.dart';
import 'package:kinastic/presentation/pages/home/home_page.dart';
import 'package:kinastic/presentation/pages/insight/insight_page.dart';
import 'package:kinastic/presentation/pages/profile/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;

  final List<Widget> pages = [
    const HomePage(),
    const CoachPage(),
    const InsightPage(),
    const ExplorePage(),
    const ProfilePage(),
  ];

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: changePage,
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.thirdColor.shade100,
        unselectedItemColor: AppColors.primaryColor.shade100,
        showUnselectedLabels: true,
        elevation: 0,
        items: List.generate(5, (index) {
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              bottomBarIcons[index],
            ),
            label: bottomBarLabels[index],
          );
        }),
      ),
    );
  }

  void changePage(int index) {
    setState(() {
      _selectedIndex = index;

      _pageController.animateToPage(
        _selectedIndex,
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeOutQuad,
      );
    });
  }
}
