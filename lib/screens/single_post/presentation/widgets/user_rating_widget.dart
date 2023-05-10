import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';

class UserRatingWidget extends StatelessWidget {
  const UserRatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      decoration: BoxDecoration(
          color: mainGreyColor,
          borderRadius: BorderRadius.circular(
            10.h,
          )),
      margin: EdgeInsets.only(
        right: 10.w,
      ),
      child: Padding(
        padding: EdgeInsets.all(10.0.h),
        child: Column(
          children: [
            Row(
              children: [
                TextCustomWidget(
                  text: "Good Experience!",
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Color(
                    0xffFDB832,
                  ),
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Color(
                    0xffFDB832,
                  ),
                  size: 15,
                ),
                const Icon(
                  Icons.star,
                  color: Color(
                    0xffFDB832,
                  ),
                  size: 15,
                ),
                Expanded(
                  child: Container(
                    color: Colors.orange,
                  ),
                ),
                TextCustomWidget(
                  text: "12 Dec 2022",
                  textStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            TextCustomWidget(
              text:
                  "I had a wonderful time during the two nights I spent here at Kandalama with my family. The location and the ambience of the hotel is such that you can spend the entire time of your trip at the hotel enjoying their numerous pools and the natural beauty.",
              overflow: TextOverflow.fade,
              marginTop: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
