import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bwa_hotel/screens/home/home_screen.dart';
import 'package:bwa_hotel/screens/search/search_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;
  List<Widget> pageList = [
    HomeScreen(),
    SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: SizedBox(
        height: 71,
        child: BottomNavigationBar(
          currentIndex: pageIndex,
          backgroundColor: Color(0xffffffff),
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/btn_home.svg',
                color: (pageIndex == 0) ? Color(0xff4E82EA) : Color(0xffD8D8D8),
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/btn_search.svg',
                color: (pageIndex == 1) ? Color(0xff4E82EA) : Color(0xffD8D8D8),
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/btn_explore.svg',
                color: (pageIndex == 2) ? Color(0xff4E82EA) : Color(0xffD8D8D8),
              ),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/btn_profile.svg',
                color: (pageIndex == 3) ? Color(0xff4E82EA) : Color(0xffD8D8D8),
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
