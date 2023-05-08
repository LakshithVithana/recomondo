import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';

class AdvertisementWidget extends StatelessWidget {
  AdvertisementWidget({
    super.key,
    this.isLarge,
  });
  bool? isLarge;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isLarge == true ? 113.h : 37.h,
      color: secondaryFontColor,
      alignment: Alignment.center,
      child: const Text("ADVERTISEMENT"),
    );
  }
}
