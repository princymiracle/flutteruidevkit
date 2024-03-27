import 'package:flutter/material.dart';
import 'package:flutteruidevkit/Constants/IconPath.dart';
import 'package:flutteruidevkit/Routes/Routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ScreenListPage extends StatefulWidget {
  const ScreenListPage({super.key});

  @override
  State<ScreenListPage> createState() => _ScreenListPageState();
}

class _ScreenListPageState extends State<ScreenListPage> {

  List<Listviewdata> listviewdata = [
    Listviewdata(number: "1", img: IconPath.onboarding, title: "On Bording", subtitle: "First time on board"),
    Listviewdata(number: "2", img: IconPath.signin, title: "Sign in", subtitle: "Used for authentication"),
    Listviewdata(number: "3", img: IconPath.signup, title: "Sign Up", subtitle: "Used for authentication"),
    Listviewdata(number: "4", img: IconPath.verfication, title: "Verification", subtitle: "Used for authentication"),
    Listviewdata(number: "5", img: IconPath.forgotpassword, title: "Forgot Password", subtitle: "Used for authentication"),
    Listviewdata(number: "6", img: IconPath.home, title: "Home", subtitle: "Main screen of the apps"),
    Listviewdata(number: "7", img: IconPath.user, title: "User / Account", subtitle: "Used for user / account menu"),
    Listviewdata(number: "8", img: IconPath.userprofile, title: "User Profile", subtitle: "Used for profile"),
    Listviewdata(number: "9", img: IconPath.contact, title: "Contact Us", subtitle: "Used for contact the customer support"),
    Listviewdata(number: "10", img: IconPath.productlist, title: "Product List", subtitle: "Used for listing product"),
    Listviewdata(number: "11", img: IconPath.timeline, title: "Timeline", subtitle: "Used for timeline"),
    Listviewdata(number: "12", img: IconPath.notification, title: "Notication", subtitle: "Used for notification message"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 3.h,left: 3.w,bottom: 2.h),
        child: ListView.separated(
          shrinkWrap: true,
          itemCount: listviewdata.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(left: 4.w,),
              child: InkWell(
                onTap: () {
                  switch (index) {
                    case 0:
                      Get.toNamed(Routes.onboarding);
                      break;
                    case 1:
                      Get.toNamed(Routes.signin);
                      break;
                    case 2:
                      Get.toNamed(Routes.signup);
                      break;
                    case 3:
                      Get.toNamed(Routes.verfication);
                      break;
                    case 4:
                      Get.toNamed(Routes.forgotpassword);
                      break;
                    case 5:
                      Get.toNamed(Routes.home);
                      break;
                    case 6:
                      Get.toNamed(Routes.user);
                      break;
                    case 7:
                      Get.toNamed(Routes.userprofile);
                      break;
                    case 8:
                      Get.toNamed(Routes.contact);
                      break;
                    case 9:
                      Get.toNamed(Routes.productlist);
                      break;
                    case 10:
                      Get.toNamed(Routes.timeline);
                      break;
                    case 11:
                      Get.toNamed(Routes.notification);
                      break;
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(listviewdata[index].number.toString(),style: TextStyle(fontSize: 12.sp),),
                        Padding(
                          padding:  EdgeInsets.only(left: 6.w),
                          child: Container(
                            height: 5.h,
                            width: 11.w,
                            decoration: BoxDecoration(
                                color: Colors.white60,
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(listviewdata[index].img.toString()),scale: 1
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                  ),
                                ]
                            ),
                            /*child: Image.asset(listviewdata[index].img.toString(),fit: BoxFit.cover,height: 3.h,width: 3.w,),*/
                          ),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 4.w,),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(listviewdata[index].title.toString()),
                              Text(listviewdata[index].subtitle.toString(),style: TextStyle(color: Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 4.h,);
        },
        ),
      ),
    );
    // return Scaffold(
    //   body: Container(
    //     padding: EdgeInsets.only(top: 3.h,left: 3.w,right: 5.w,bottom: 2.h),
    //     child: ListView.separated(
    //       shrinkWrap: true,
    //       itemCount: listviewdata.length,
    //         itemBuilder: (context, index) {
    //           return Padding(
    //             padding:  EdgeInsets.only(left: 4.w,right: 7.w),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Row(
    //                   children: [
    //                     Text(listviewdata[index].number.toString()),
    //                     Container(
    //                       height: 5.5.h,
    //                       width: 14.w,
    //                       decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(10),
    //                         boxShadow: [
    //                           BoxShadow(
    //                             color: Colors.white60,
    //                             blurRadius: 15.0,
    //                           ),
    //                         ],
    //                       ),
    //                       child: Image.asset(listviewdata[index].img.toString(),fit: BoxFit.cover,height: 0.2.h,width: 0.2.w,),
    //                       // decoration: BoxDecoration(
    //                       //     border: Border.all(width: 4,color: Colors.white),
    //                       //     boxShadow: [
    //                       //       BoxShadow(
    //                       //         spreadRadius: 2,
    //                       //         blurRadius: 10,
    //                       //         color: Colors.black.withOpacity(0.1),
    //                       //       ),
    //                       //     ],
    //                       //     image:  DecorationImage(
    //                       //       fit: BoxFit.cover,
    //                       //       image: AssetImage(
    //                       //         listviewdata[index].img.toString(),
    //                       //       ),
    //                       //     )
    //                       // ),
    //                     ),
    //                     Padding(
    //                       padding: EdgeInsets.only(left: 5.w),
    //                       child: Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(listviewdata[index].title.toString()),
    //                           Text(listviewdata[index].subtitle.toString()),
    //                         ],
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ],
    //             ),
    //           );
    //         },
    //         separatorBuilder: (context, index) {
    //           return SizedBox();
    //         },
    //     ),
    //   ),
    // );
  }
}

class Listviewdata {
  String number;
  String img;
  String title;
  String subtitle;

  Listviewdata({
    required this.number,
    required this.img,
    required this.title,
    required this.subtitle,
});

}