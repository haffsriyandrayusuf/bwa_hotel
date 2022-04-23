import 'package:flutter/material.dart';

class ItemSearchWidget extends StatelessWidget {
  const ItemSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Wrap(
          children: const [
            LatestSearchWidget(lastSearch: 'Mason'),
            LatestSearchWidget(lastSearch: 'Swissbell'),
            LatestSearchWidget(lastSearch: 'Yello'),
            LatestSearchWidget(lastSearch: 'GH Setiabudi'),
            LatestSearchWidget(lastSearch: 'Damoty Hotel'),
          ],
        ),
      ),
    );
  }
}

class LatestSearchWidget extends StatelessWidget {
  const LatestSearchWidget({
    Key? key,
    required this.lastSearch,
  }) : super(key: key);

  final String lastSearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 12,
        top: 12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 6,
      ),
      height: 33,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(100),
        ),
      ),
      child: Text(lastSearch),
    );
  }
}
