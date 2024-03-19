import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';
import 'package:newproject/Widget/Component/CustomTextFormField.dart';

class FindTheMedicine extends StatefulWidget {
  const FindTheMedicine({super.key});

  @override
  State<FindTheMedicine> createState() => _FindTheMedicineState();
}

class _FindTheMedicineState extends State<FindTheMedicine> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 61.w,
            height: 64.h,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(25.r))),
            child: Image.asset(AppImages.filter),
          ),
        ),
        SizedBox(
          width: 25.w,
        ),
        SizedBox(
            height: 64.h,
            width: 292.w,
            child: CustomTextFormField(
                textEditingController: searchController,
                color: Theme.of(context).primaryColor,
                hintText: AppStrings.search,
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                iconData: AppImages.search))
      ],
    );
  }
}
