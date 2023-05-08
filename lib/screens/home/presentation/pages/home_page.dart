import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/advertisement_widget.dart';
import 'package:recomondo/screens/home/presentation/widgets/recomendation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownValue = 'Exceptional';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainGreyColor,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24.sp,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: mainOrangeColor,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: [
                  Container(
                    height: 30.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        // width: 0.80
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: mainOrangeColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(),
                      onChanged: (value) {},
                      items: <String>[
                        'Exceptional',
                        '2 Stars',
                        '3 Stars',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                      height: 30.h,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        border: Border.all(
                          color: Colors.red,
                          style: BorderStyle.solid,
                          // width: 0.80
                        ),
                      ),
                      child: Row(
                        children: [
                          const Text('Inexpensive'),
                          const SizedBox(width: 10),
                          Switch(
                            value: true,
                            activeColor: mainOrangeColor,
                            onChanged: (value) {
                              setState(() {
                                // switchValue = value;
                              });
                            },
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 7.h,
              ),
              Row(
                children: [
                  Container(
                    height: 30.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        // width: 0.80
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: mainOrangeColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(),
                      onChanged: (value) {},
                      items: <String>[
                        'Exceptional',
                        '2 Stars',
                        '3 Stars',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 30.h,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        color: Colors.red,
                        style: BorderStyle.solid,
                        // width: 0.80
                      ),
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: mainOrangeColor,
                      ),
                      iconSize: 24,
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(),
                      onChanged: (value) {},
                      items: <String>[
                        'Exceptional',
                        '2 Stars',
                        '3 Stars',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              const Divider(),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Showing closest to distant order",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Divider(),
              const RecomendationWidget(),
              AdvertisementWidget(
                isLarge: true,
              ),
              const RecomendationWidget(),
              const RecomendationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
