import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/core/widgets/container_custom.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';

class WelcomeMessageWidget extends StatelessWidget {
  const WelcomeMessageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 40.w,
        vertical: 20.h,
      ),
      child: Column(
        children: [
          ContainerCustom(
            height: 200.h,
            width: 300.h,
            bgColor: const Color(0xffDEDEDE),
            borderRadius: BorderRadius.circular(
              20.h,
            ),
          ),
          TextCustomWidget(
            marginTop: 10.h,
            text:
                "RecoMondo is the perfect app for anyone who loves to travel and explore new places. With it, you can tap into the collective knowledge of your friends and family to discover the best spots in any city or town.",
          ),
        ],
      ),
    );
  }
}
