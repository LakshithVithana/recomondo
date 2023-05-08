import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';

class GalleryPictureWidget extends StatelessWidget {
  const GalleryPictureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 116.h,
        decoration: BoxDecoration(
            color: mainGreyColor,
            borderRadius: BorderRadius.circular(
              10.h,
            )),
        margin: EdgeInsets.only(
          right: 10.w,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            10.h,
          ),
          child: Image.network(
            "https://travel.usnews.com/dims4/USNEWS/00e9466/2147483647/resize/445x280%5E%3E/crop/445x280/quality/85/?url=https://travel.usnews.com/images/gettyimages-520025941_5j9mOtt.jpg",
            fit: BoxFit.fill,
          ),
        ));
  }
}
