import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newproject/Core/Utils/AppImages.dart';
import 'package:newproject/Core/Utils/AppStrings.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Widget/AppBarPharmacy.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Widget/CardProduct.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Widget/CardProductTwo.dart';
import 'package:newproject/Features/Presentation/View/Home/Pharmacy/Widget/SearchProduct.dart';
import 'package:newproject/Features/Presentation/View/Home/PharmacyDetails/PharmacyDetails.dart';

class Pharmacybody extends StatelessWidget {
  const Pharmacybody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.r),
        child: SafeArea(
          child: ListView(
            shrinkWrap: true,
            children: [
              AppBarPharmacy(
                color1: Theme.of(context).primaryColor,
                color2: Theme.of(context).primaryColor,
                ontTap2: () {},
                ontTap1: () {},
                url1: AppImages.message,
                url2: AppImages.notification,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    AppStrings.onlinePharmacy,
                    style: GoogleFonts.arefRuqaa(
                        textStyle: TextStyle(
                      fontSize: 35.sp,
                      color: Colors.blue,
                    )),
                  )),
              Padding(
                padding: EdgeInsets.only(top: 31.h),
                child: const FindTheMedicine(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 53.h),
                child: Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      textDirection: TextDirection.rtl,
                      AppStrings.mostPurchasedMedicines,
                      style: GoogleFonts.archivo(
                          textStyle: TextStyle(
                              fontSize: 20.sp,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w900)),
                    )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 53.h),
                child: SizedBox(
                    height: 370.h,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const PharmacyDetails();
                            },
                          ));
                        },
                        child: const CardProduct())),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.w, top: 15.h),
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const PharmacyDetails();
                        },
                      ));
                    },
                    child: const CardProductTwo()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
