import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/container_custom.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/core/widgets/text_field_custom.dart';
import 'package:recomondo/screens/add_a_location/widgets/location_rating_option_widget.dart';

class AddALocationPage extends StatefulWidget {
  const AddALocationPage({super.key});

  @override
  State<AddALocationPage> createState() => _AddALocationPageState();
}

class _AddALocationPageState extends State<AddALocationPage> {
  String dropdownValue = 'Hotel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreyColor,
        title: const Text(
          "Add Alocation",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              TextCustomWidget(
                text:
                    "Add your favourite destination into your friends circle.",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              TextCustomWidget(
                text: "Category",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
                marginTop: 25.h,
                marginBottom: 10.h,
              ),
              Container(
                // height: 30.h,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: mainGreyColor,
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: dropdownValue,
                  icon: const Icon(
                    Icons.keyboard_arrow_right_sharp,
                    color: Colors.black,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(),
                  onChanged: (value) {},
                  items: <String>[
                    'Hotel',
                    'Villa',
                    'Spa',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              TextCustomWidget(
                text: "Select from the map",
                textStyle: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: accentColor),
                marginTop: 15.h,
                marginBottom: 5.h,
                containerAlignment: Alignment.centerRight,
              ),
              TextFieldCustom(
                fillColor: mainGreyColor,
                hintText: "Location Name",
                margins: EdgeInsets.only(
                  bottom: 10.h,
                ),
              ),
              const Divider(),
              TextCustomWidget(
                text: "Rating",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                marginBottom: 10.h,
              ),
              const LocationRatingOptionWidget(
                ratingType: RatingType.exceptional,
              ),
              const LocationRatingOptionWidget(
                ratingType: RatingType.amazing,
              ),
              const LocationRatingOptionWidget(
                ratingType: RatingType.veryGood,
              ),
              SizedBox(
                height: 10.h,
              ),
              TextField(
                maxLines: 10,
                minLines: 5,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: mainGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Review',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                  height: 40.h,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: mainGreyColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Inexpensive'),
                      const SizedBox(width: 10),
                      Switch(
                        value: true,
                        activeColor: mainOrangeColor,
                        onChanged: (value) {},
                      ),
                    ],
                  )),
              const Divider(),
              TextField(
                maxLines: 10,
                minLines: 5,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: mainGreyColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Description',
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFieldCustom(
                hintText: "Telephone",
                fillColor: mainGreyColor,
                margins: EdgeInsets.only(
                  bottom: 10.h,
                ),
              ),
              TextFieldCustom(
                hintText: "Web Address",
                fillColor: mainGreyColor,
                margins: EdgeInsets.only(
                  bottom: 10.h,
                ),
              ),
              TextCustomWidget(
                text: "GPS Coordinates",
                textStyle: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                ),
                marginTop: 20.h,
                marginBottom: 10.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextFieldCustom(
                      hintText: "Telephone",
                      fillColor: mainGreyColor,
                      margins: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.h),
                        bottomLeft: Radius.circular(10.h),
                      ),
                    ),
                  ),
                  Container(
                    width: 1,
                    // height: 30,
                    color: const Color(0x00808080),
                  ),
                  Expanded(
                    child: TextFieldCustom(
                      hintText: "Telephone",
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.h),
                        bottomRight: Radius.circular(10.h),
                      ),
                      fillColor: mainGreyColor,
                      margins: EdgeInsets.only(
                        bottom: 10.h,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const Divider(),
              TextCustomWidget(
                marginBottom: 10.h,
                text: "Photos",
                textStyle: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              ContainerCustom(
                height: 150.h,
                bgColor: mainGreyColor,
                marginBottom: 23.h,
                borderRadius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.add),
                    TextCustomWidget(text: "Add"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum RatingType {
  exceptional,
  amazing,
  veryGood,
}
