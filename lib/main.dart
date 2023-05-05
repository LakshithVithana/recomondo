import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recomondo/screens/welcome/presentation/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 852),
      builder: (context, child) {
        return MaterialApp(
          title: 'Recomondo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: GoogleFonts.robotoTextTheme(),
          ),
          home: const WelcomePage(),
        );
      },
    );
  }
}
