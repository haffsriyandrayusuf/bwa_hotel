import 'package:flutter/material.dart';

class HeaderSearchWidget extends StatelessWidget {
  const HeaderSearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Your Locations',
            style: TextStyle(
              color: Color(0xffb7b7b7),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: const [
              Text(
                'Bandung, ',
                style: TextStyle(
                  color: Color(0xff2A2B3D),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Indonesia',
                style: TextStyle(
                  color: Color(0xff2A2B3D),
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(100),
                ),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Icon(Icons.search),
              ),
              hintText: 'Find your Favorite Hotels',
              hintStyle: TextStyle(
                color: Color(0xffb7b7b7),
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
