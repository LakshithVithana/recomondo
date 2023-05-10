import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/screens/single_post/presentation/pages/single_post_page.dart';

class RecomendationWidget extends StatelessWidget {
  const RecomendationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5.h),
      // color: åColors.yellow,
      // height: 100.h,
      child: GestureDetector(
        onTap: () {
          //
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SinglePostPage(),
              ));
        },
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(),
                SizedBox(
                  width: 10.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustomWidget(
                      text: "Allen Kent",
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextCustomWidget(
                      text: "08 Sep 2022",
                      textStyle: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 21.w,
                ),
                TextButton(
                  onPressed: () {},
                  child: TextCustomWidget(
                    text: "Following",
                    textStyle: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                      color: accentColor,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextCustomWidget(
                      text: "Georgette’s Inn ",
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextCustomWidget(
                      text: "Hotel",
                      textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff7C7C7C)),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_rate,
                          color: secondaryColor,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_rate,
                          color: secondaryColor,
                          size: 20,
                        ),
                        const Icon(
                          Icons.star_rate,
                          color: secondaryColor,
                          size: 20,
                        ),
                        TextCustomWidget(
                          text: "Exceptional",
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: secondaryFontColor,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_downward,
                          color: secondaryColor,
                          size: 20,
                        ),
                        TextCustomWidget(
                          text: "Inexpensive",
                          textStyle: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: secondaryFontColor,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 14.h,
            ),
            TextCustomWidget(
              text: "22, Gregory Road, Las Vegas, Nevada,",
              textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7C7C7C)),
            ),
            TextCustomWidget(
              text: "53.339688, -6.236688",
              textStyle: TextStyle(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff7C7C7C)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark_border_outlined,
                      color: secondaryColor,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: secondaryColor,
                    )),
              ],
            ),
            // SizedBox(
            //   height: 5.h,
            // ),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
