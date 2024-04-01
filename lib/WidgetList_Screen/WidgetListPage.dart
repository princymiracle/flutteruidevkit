import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/ImagePath.dart';
import '../Routes/Routes.dart';

class WidgetListPage extends StatelessWidget {
  String title;
  WidgetListPage({super.key,this.title = 'Widget'});

  List listData = [
    "Animated Cross Fade",
    "Animateddefault Textstyle",
    "Animated List",
    "Animated Opacity",
    "Animated Physical Model",
    "Animated Size",
    "Animated Widget",
    "Aspect Ratio",
    "Card Widget",
    "DecoratedBox Transition",
    "Data Table",
    "Dismissible",
    "Drawer Widget",
    "Animated Rotation Transition",
    "Hero Widget",
    "Image Widget",
    "Opacity Widget",
    "SafeArea Widget",
    "Scale Transition",
    "Size Transition",
    "Snack Bar",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesPath.background),fit: BoxFit.cover)),
          child: Padding( padding: EdgeInsets.all(5.w),
            child: Container(
              child:ListView.builder(
                itemCount: listData.length,shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(padding: EdgeInsets.all(2.w),
                    child: InkWell(
                      onTap: () {
                        switch(index){
                          case 0:
                            Get.toNamed(Routes.acrosslistpage);
                            break;
                          case 1:
                            Get.toNamed(Routes.animateddefaulttextstyle);
                            break;
                          case 2:
                            Get.toNamed(Routes.animatedlist);
                            break;
                          case 3:
                            Get.toNamed(Routes.animatedopacity);
                            break;
                          case 4:
                            Get.toNamed(Routes.animatedephysicalmodel);
                            break;
                          case 5:
                            Get.toNamed(Routes.animatedsizepage);
                            break;
                          case 6:
                            Get.toNamed(Routes.animatedwidgetpage);
                            break;
                          case 7:
                            Get.toNamed(Routes.aspectratiopage);
                            break;
                          case 8:
                            Get.toNamed(Routes.cardlistpage);
                            break;
                          case 9:
                            Get.toNamed(Routes.decoratedboxtransitionpage);
                            break;
                          case 10:
                            Get.toNamed(Routes.datatablepage);
                            break;
                          case 11:
                            Get.toNamed(Routes.dismissiblelistpage);
                            break;
                          case 12:
                            Get.toNamed(Routes.drawerlistpage);
                            break;
                          case 13:
                            Get.toNamed(Routes.rotationtransitionpage);
                            break;
                          case 14:
                            Get.toNamed(Routes.herowidgetpage);
                            break;
                          case 15:
                            Get.toNamed(Routes.imagewidgetpage);
                            break;
                          case 16:
                            Get.toNamed(Routes.textopacitypage);
                            break;
                          case 17:
                            Get.toNamed(Routes.safeareawidgetlistpage);
                            break;
                          case 18:
                            Get.toNamed(Routes.scaletransitionpage);
                            break;
                          case 19:
                            Get.toNamed(Routes.SizeTransitionPage);
                            break;
                          case 20:
                            Get.toNamed(Routes.snackbarlistpage);
                            break;
                        }
                      },
                      child: Container(width: 80.w,height: 8.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.w),
                          image: DecorationImage(image: AssetImage(ImagesPath.conImg,), fit: BoxFit.fill,),),
                        child: Center(
                          child: Text(
                            listData[index], style: TextStyle(color: Theme.of(context).secondaryHeaderColor,fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
 //    54 56 57 61 62