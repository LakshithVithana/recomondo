import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/advertisement_widget.dart';
import 'package:recomondo/core/widgets/text_field_custom.dart';
import 'package:recomondo/screens/home/presentation/widgets/filters_widget.dart';
import 'package:recomondo/screens/home/presentation/widgets/recomendation_widget.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreyColor,
        title: Text(
          "Explore",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24.sp,
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Container(
            // color: Colors.amber,
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/explore_bg.png",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20.w,
            ),
            // color: Colors.red,
            child: Column(
              children: [
                const FiltersWidget(),
                const TextFieldCustom(
                  hintText: "Search Location",
                  prefixIcon: Icons.search,
                  fillColor: Colors.white,
                ),
                Expanded(
                  child: Container(
                      // color: Colors.green,
                      ),
                ),
                RecomendationWidget(
                  inExplorePage: true,
                ),
                AdvertisementWidget(),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
