import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 71,
      child: BottomNavigationBar(
        backgroundColor: Color(0xffffffff),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/btn_home.svg',
              color: Color(0xff4E82EA),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/btn_search.svg'),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/btn_explore.svg'),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/images/btn_profile.svg'),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Color(0xff4E82EA),
      ),
    );
  }
}
