import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/Features/Presentation/View/Home/Home.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Pharmacy.dart';
import 'package:newproject/Widget/Theme/LightTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_ , child) {
        return MaterialApp(

          debugShowCheckedModeBanner: false,
          theme: light,
          home: child,
        );
      },
      child:const Pharmacy(),
    );
  }
}
