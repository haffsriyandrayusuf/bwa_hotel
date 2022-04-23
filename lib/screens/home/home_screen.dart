import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/header_balance.dart';
import '../section_tile.dart';
import 'widget/recommanded_hotel.dart';
import 'widget/new_hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderBalanceWidget(),
            SectionTileWidget(
              titleSection: 'Recommended Hotels',
              pressSeeAll: () {},
            ),
            RecommandedHotelWidget(),
            SectionTileWidget(
              titleSection: 'New Hotels Experience',
              pressSeeAll: () {},
            ),
            NewHotelWidget(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color(0xff5589F0),
      elevation: 0,
      leadingWidth: 75,
      leading: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/images/btn_menu.svg'),
      ),
      centerTitle: true,
      title: Text(
        'Discover',
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      actions: [
        SizedBox(
          width: 75,
          child: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/btn_notif.svg'),
          ),
        ),
      ],
    );
  }
}
