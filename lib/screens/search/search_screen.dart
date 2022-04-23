import 'package:bwa_hotel/screens/search/widget/header_search.dart';
import 'package:bwa_hotel/screens/search/widget/item_search.dart';
import 'package:bwa_hotel/screens/search/widget/nearby_hotel.dart';
import 'package:bwa_hotel/screens/section_tile.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFBFB),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSearchWidget(),
              Divider(
                color: Color(0xffEEEEEE),
                height: 10,
              ),
              SectionTileSearch(
                titleSection: 'Lastest Search',
              ),
              ItemSearchWidget(),
              SectionTileSearch(
                titleSection: 'Nearby You',
              ),
              NearbyHotelWidget(),
              Container(
                margin: EdgeInsets.only(
                  top: 24,
                ),
                child: Center(
                  child: Text(
                    'Load More',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4E82EA),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
