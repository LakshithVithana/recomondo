import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/button_custom_widget.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/core/widgets/text_field_custom.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            // Implement back button functionality here
          },
        ),
        backgroundColor: mainGreyColor,
        title: Text(
          "Sign Up",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          children: [
            TextCustomWidget(
                marginTop: 27.h,
                marginBottom: 30.h,
                text:
                    "Join RecoMondo today and start discovering the world through the eyes of your loved ones!"),
            TextFieldCustom(
              hintText: "First Name",
              margins: EdgeInsets.only(
                bottom: 10.h,
              ),
            ),
            TextFieldCustom(
              hintText: "Last Name",
              margins: EdgeInsets.only(
                bottom: 10.h,
              ),
            ),
            TextFieldCustom(
              hintText: "About",
              margins: EdgeInsets.only(
                bottom: 25.h,
              ),
            ),
            TextFieldCustom(
              hintText: "Email",
              margins: EdgeInsets.only(
                bottom: 10.h,
              ),
            ),
            TextFieldCustom(
              hintText: "Password",
              margins: EdgeInsets.only(
                bottom: 30.h,
              ),
            ),
            ButtonCustomWidget(
              buttonText: "Sign Up",
              callback: () {},
              margins: EdgeInsets.only(
                bottom: 40.h,
              ),
            ),
            ButtonCustomWidget(
              buttonText: "Sign Up using Google",
              callback: () {},
              iconAssetUrl: "assets/images/google_logo.png",
              margins: EdgeInsets.only(
                bottom: 10.h,
              ),
            ),
            ButtonCustomWidget(
              buttonText: "Sign Up using Facebook",
              callback: () {},
              margins: EdgeInsets.zero,
              iconAssetUrl: "assets/images/facebook_logo.png",
            )
          ],
        ),
      ),
    );
  }
}
