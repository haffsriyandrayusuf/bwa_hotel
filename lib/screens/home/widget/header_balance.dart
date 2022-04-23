import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderBalanceWidget extends StatelessWidget {
  const HeaderBalanceWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 125,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08 + 3,
            color: Color(0xff5589F0),
          ),
          Positioned(
            // bottom: 0,
            // left: 0,
            // right: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 24,
                ),
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadiusDirectional.all(
                    Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Your Balance',
                            style: TextStyle(color: Color(0xffB7B7B7)),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'IDR 9.200.301',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff4E82EA),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/images/btn_add.svg',
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
