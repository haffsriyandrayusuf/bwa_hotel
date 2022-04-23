import 'package:flutter/material.dart';

class SectionTileWidget extends StatelessWidget {
  const SectionTileWidget({
    Key? key,
    required this.titleSection,
    required this.pressSeeAll,
  }) : super(key: key);

  final String titleSection;
  final VoidCallback pressSeeAll;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleSection,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2A2B3D),
              ),
            ),
            GestureDetector(
              onTap: pressSeeAll,
              child: Text(
                'View All',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff4E82EA),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SectionTileSearch extends StatelessWidget {
  const SectionTileSearch({
    Key? key,
    required this.titleSection,
  }) : super(key: key);
  final String titleSection;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Container(
        margin: EdgeInsets.only(
          top: 24,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titleSection,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xff2A2B3D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
