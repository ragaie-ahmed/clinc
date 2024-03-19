import 'package:flutter/material.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/AppBarPharmacyDetails.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/ContentPharmacyBody.dart';

class PharmacyDetailsBody extends StatelessWidget {
  const PharmacyDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.error,
      body: Column(
        children: [
          SizedBox(height:31.h ,),
          const  AppBarPharmacyDetails(),
          const     Spacer(),
          const   ContentPharmacyBody()
        ],
      ),
    );
  }
}
