import 'package:bwa_hotel/models/list_hotel.dart';
import 'package:flutter/material.dart';

class NearbyHotelWidget extends StatelessWidget {
  const NearbyHotelWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 24,
        right: 24,
        // bottom: 12,
      ),
      child: Column(
          children: List.generate(
        listHotel.length - 3,
        (index) {
          return Container(
            margin: EdgeInsets.only(
              top: 12,
            ),
            width: double.infinity,
            height: 94,
            decoration: BoxDecoration(
              color: Color(0xffffffff),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(listHotel[index + 3].image),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      listHotel[index + 3].name,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff2A2B3D),
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      listHotel[index + 3].location,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xffB7B7B7),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Text(
                        listHotel[index + 3].jarak,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xffF2735B),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      )),
    );
  }
}
