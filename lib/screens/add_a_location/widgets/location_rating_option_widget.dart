import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/screens/add_a_location/add_a_location_page.dart';

class LocationRatingOptionWidget extends StatelessWidget {
  const LocationRatingOptionWidget({
    super.key,
    required this.ratingType,
  });
  final RatingType ratingType;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: mainGreyColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        isThreeLine: true,
        title: TextCustomWidget(
          text: ratingType == RatingType.exceptional
              ? "Exceptional"
              : ratingType == RatingType.amazing
                  ? "Amazing"
                  : "Very Good",
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: TextCustomWidget(
          text: ratingType == RatingType.exceptional
              ? "Go out of your way to get here"
              : ratingType == RatingType.amazing
                  ? "This is a must do if you are in the area"
                  : "Would recommend coming here if you in the area",
          // text: "Go out of your way to get here",
          textStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        trailing: RatingBar.builder(
          initialRating: 3,
          direction: Axis.horizontal,
          itemCount: ratingType == RatingType.exceptional
              ? 3
              : ratingType == RatingType.amazing
                  ? 2
                  : 1,
          itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => const Icon(
            Icons.star,
            color: Colors.amber,
            size: 10,
          ),
          ignoreGestures: true,
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
      ),
    );
  }
}
