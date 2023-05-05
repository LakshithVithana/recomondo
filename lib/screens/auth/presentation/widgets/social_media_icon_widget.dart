import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/core/widgets/container_custom.dart';

class SocialMediaIconWidget extends StatelessWidget {
  const SocialMediaIconWidget({Key? key, required this.assetUrl})
      : super(key: key);

  final String assetUrl;

  @override
  Widget build(BuildContext context) {
    return ContainerCustom(
      height: 32.h,
      width: 32.h,
      bgColor: Colors.white,
      padding: EdgeInsets.all(6.h),
      borderRadius: BorderRadius.circular(
        10.h,
      ),
      child: Image.asset(assetUrl),
    );
  }
}
