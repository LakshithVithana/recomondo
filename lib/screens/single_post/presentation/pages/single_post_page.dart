import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/advertisement_widget.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/screens/single_post/presentation/widgets/gallery_picture_widget.dart';
import 'package:recomondo/screens/single_post/presentation/widgets/location_details_widget.dart';
import 'package:recomondo/screens/single_post/presentation/widgets/user_rating_widget.dart';

class SinglePostPage extends StatelessWidget {
  const SinglePostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreyColor,
        title: const Text(
          "Geogette's Inn",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ios_share,
              color: mainOrangeColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 24.h,
              ),
              const LocationDetailsWidget(),
              const Divider(),
              AdvertisementWidget(),
              const Divider(),
              Container(
                // color: Colors.green,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextCustomWidget(
                          text: "Ratings & Reviews",
                          textStyle: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See All",
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: accentColor,
                              ),
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        TextCustomWidget(
                          text: 'EXCEPTIONAL',
                          marginRight: 26.w,
                          textStyle: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.star, size: 15),
                                const Icon(Icons.star, size: 15),
                                const Icon(Icons.star, size: 15),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  height: 3.h,
                                  width: 100.w,
                                  color: secondaryFontColor,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 15),
                                const Icon(Icons.star, size: 15),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  height: 3.h,
                                  width: 100.w,
                                  color: secondaryFontColor,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.star, size: 15),
                                Container(
                                  margin: EdgeInsets.only(
                                    left: 16.w,
                                  ),
                                  height: 3.h,
                                  width: 100.w,
                                  color: secondaryFontColor,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    TextCustomWidget(
                      text: "124 Ratings",
                      marginTop: 26.h,
                      marginBottom: 14.h,
                      textAlign: TextAlign.right,
                      containerAlignment: Alignment.centerRight,
                      textStyle: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Divider(),
                    SizedBox(
                      height: 170.h,
                      child: Swiper(
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return const UserRatingWidget();
                        },
                        viewportFraction: .8,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: const [
                          Icon(
                            Icons.add,
                            color: mainOrangeColor,
                          ),
                          TextCustomWidget(
                            text: "Write a Review",
                            textColor: mainOrangeColor,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    const Divider(),
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
                    const Divider(),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextCustomWidget(
                      text: "Gallery",
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      height: 170.h,
                      child: Swiper(
                        itemCount: 4,
                        // loop: false,
                        itemBuilder: (context, index) {
                          return const GalleryPictureWidget();
                        },
                        viewportFraction: .7,
                      ),
                    ),
                    const Divider(),
                    TextCustomWidget(
                      text: "Description",
                      marginBottom: 15.h,
                      textStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextCustomWidget(
                      text:
                          "This resort villa features free Wi-Fi in all rooms for easy connection, and car park free of charge. Conveniently situated in the Galle City part of Galle, this property puts you close to attractions and interesting dining options. Don't leave before paying a visit to the famous Old Town of Galle and its Fortifications. Restaurant and outdoor pool are among the special facilities that will enhance your stay with on-site convenience.",
                      textStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      marginBottom: 22.h,
                    ),
                    AdvertisementWidget(),
                    SizedBox(
                      height: 20.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
