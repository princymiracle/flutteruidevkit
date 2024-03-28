import 'package:flutter/material.dart';
import 'package:flutteruidevkit/Constants/IconPath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../Routes/Routes.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  List<OnBoardingData> onboardingdata = [
    OnBoardingData(img: IconPath.dot, title: "On Boarding 1",color: Color(0xFFCE55FF)),
    OnBoardingData(img: IconPath.dot1, title: "On Boarding 2",color: Color(0xFF9751B4)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("On Boarding",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,letterSpacing: 1),),
        centerTitle: true,
        backgroundColor: Colors.white60,
      ),
      body: Padding(
          padding: EdgeInsets.only(left: 4.w,right: 5.w,top: 1.5.h,bottom: 7.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("On Boarding Screen",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 0.8,fontSize: 14.sp),),
            SizedBox(height: 1.5.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("On Boarding Screen used of ",style: TextStyle(fontWeight: FontWeight.
                    bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                    Text("quick tutorial on the app",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 11.sp,color: Colors.grey),),
                  ],
                ),
                Image.asset(IconPath.onboarding,fit: BoxFit.cover,height: 5.h,color: Colors.blue,),
              ],
            ),
            SizedBox(height: 3.h,),
            Text("Screen List",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,letterSpacing: 1),),
            SizedBox(height: 3.h,),
            Column(
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  itemCount: onboardingdata.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          switch (index) {
                            case 0:
                              Get.toNamed(Routes.onboarding1);
                              break;
                            case 1:
                              Get.toNamed(Routes.onboarding2);
                              break;
                          }
                          },
                        child: Container(
                          height: 6.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white60,
                            borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                ),
                              ]
                          ),
                          child: ListTile(
                            leading: Image.asset(onboardingdata[index].img.toString()),
                            title: Text(onboardingdata[index].title.toString(),),
                            trailing: Icon(Icons.arrow_forward_ios,color: onboardingdata[index].color,),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 2.h,);
                    },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OnBoardingData {
  String img;
  String title;
  Color color;

  OnBoardingData({
    required this.img,
    required this.title,
    required this.color,
  });

}