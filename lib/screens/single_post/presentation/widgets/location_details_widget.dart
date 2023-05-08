import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';

class LocationDetailsWidget extends StatelessWidget {
  const LocationDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.square,
              ),
              TextCustomWidget(
                text: "Hotel",
                textStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: secondaryFontColor,
                ),
                marginLeft: 10.w,
                marginRight: 30.w,
              ),
              const Icon(
                Icons.arrow_downward,
                color: secondaryColor,
              ),
              TextCustomWidget(
                text: "Inexpensive",
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: secondaryFontColor,
                ),
                marginLeft: 10.w,
                marginRight: 30.w,
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.map_outlined,
                    color: mainOrangeColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.bookmark_border_outlined,
                    color: mainOrangeColor,
                  )),
            ],
          ),
          TextCustomWidget(
            text: "Georgette’s Inn ",
            marginTop: 5.h,
            marginBottom: 5.h,
            textStyle: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          TextCustomWidget(
            text: "22, Gregory Road, Las Vegas, Nevada",
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: secondaryFontColor,
            ),
          ),
          TextCustomWidget(
            text: "53.339688, -6.236688",
            textStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: secondaryFontColor,
            ),
            marginBottom: 17.h,
          ),
          Row(
            children: [
              const Icon(Icons.phone),
              TextCustomWidget(
                text: '+94 7123 123 4532',
                marginLeft: 10.w,
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: secondaryFontColor,
                ),
              ),
              SizedBox(
                width: 30.w,
              ),
              const Icon(Icons.square),
              TextCustomWidget(
                text: 'www.georgettesinn.com',
                marginLeft: 10.w,
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: accentColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
        ],
      ),
    );
  }
}
