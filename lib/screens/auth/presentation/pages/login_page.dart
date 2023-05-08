import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/button_custom_widget.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/core/widgets/text_field_custom.dart';
import 'package:recomondo/screens/home/presentation/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            Navigator.pop(context);
          },
        ),
        backgroundColor: mainGreyColor,
        title: Text(
          "Log In",
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
                  "Welcome back to RecoMondo! Log in to your account and continue exploring the world with the help of your friends and family.",
              fontSize: 16.sp,
              textAlign: TextAlign.center,
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
              buttonText: "Log In",
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ));
              },
              margins: EdgeInsets.only(
                bottom: 40.h,
              ),
            ),
            ButtonCustomWidget(
              buttonText: "Log In using Google",
              callback: () {},
              iconAssetUrl: "assets/images/google_logo.png",
              margins: EdgeInsets.only(
                bottom: 10.h,
              ),
            ),
            ButtonCustomWidget(
              buttonText: "Log In using Facebook",
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
