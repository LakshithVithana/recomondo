import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/screens/auth/presentation/widgets/social_media_icon_widget.dart';

class ButtonCustomWidget extends StatelessWidget {
  ButtonCustomWidget({
    Key? key,
    required this.buttonText,
    required this.callback,
    this.margins,
    this.iconAssetUrl,
  }) : super(key: key);
  final String buttonText;
  final VoidCallback callback;
  EdgeInsets? margins;
  final String? iconAssetUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margins ??
          EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
      child: SizedBox(
        height: 45.h,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0.h),
              // side: const BorderSide(color: Colors.red, width: 2.0),
            ),
          ),
          onPressed: callback,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextCustomWidget(
                text: buttonText,
                textAlign: TextAlign.center,
                containerAlignment: Alignment.center,
                textColor: Colors.white,
                fontSize: 16.h,
              ),
              iconAssetUrl != null
                  ? Padding(
                      padding: EdgeInsets.only(left: 47.w),
                      child: SocialMediaIconWidget(assetUrl: iconAssetUrl!),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
