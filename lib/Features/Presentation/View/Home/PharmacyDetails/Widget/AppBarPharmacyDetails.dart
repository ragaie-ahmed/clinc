import 'package:flutter/material.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Widget/AppBarPharmacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarPharmacyDetails extends StatelessWidget {
  const AppBarPharmacyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).colorScheme.secondary,
            )),
      const  Spacer(),
        AppBarPharmacy(
            color1: Theme.of(context).colorScheme.secondary,
            color2: Theme.of(context).colorScheme.secondary,
            ontTap1: () {},
            ontTap2: () {},
            url1: AppImages.message,
            url2: AppImages.notification),
        SizedBox(
          width: 20.w,
        )
      ],
    );
  }
}
