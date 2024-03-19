import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/CardStars.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/IndicationsCard.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/InformationCard.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/Widget/LastUpdate.dart';

class ContentPharmacyBody extends StatelessWidget {
  const ContentPharmacyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 680,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 1.h,
            child: Container(
              width: 428.w,
              height: 580.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r)),
                  color: Theme
                      .of(context)
                      .colorScheme
                      .onTertiary),
              child: Padding(
                padding: EdgeInsets.only(top: 112.h),
                child:const ContentBody(),
              ),
            ),
          ),
          Positioned(
            top: 1.h,
            child: Container(
              width: 300,
              padding:const EdgeInsets.only(top: 15),
              height: 300,
              decoration: BoxDecoration(
                  color: Theme
                      .of(context)
                      .colorScheme
                      .secondary,
                  borderRadius: BorderRadius.circular(190)),
              child: Image.asset(
                AppImages.medicine,
                fit: BoxFit.fitHeight,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ContentBody extends StatelessWidget {
  const ContentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
      const  CardStars(),
        SizedBox(height: 10.h,),
        const   IndicationsCard(),
        SizedBox(height: 10.h,),
        const   InfomationCard(),
        SizedBox(height: 10.h,),

        const  LastUpdate()


      ],
    );
  }
}
