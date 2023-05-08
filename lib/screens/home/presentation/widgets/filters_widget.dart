import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';

class FiltersWidget extends StatefulWidget {
  const FiltersWidget({super.key});

  @override
  State<FiltersWidget> createState() => _FiltersWidgetState();
}

class _FiltersWidgetState extends State<FiltersWidget> {
  String dropdownValue = 'Exceptional';

  @override
  Widget build(BuildContext context) {
    return Column(
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
                      onChanged: (value) {},
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
      ],
    );
  }
}
