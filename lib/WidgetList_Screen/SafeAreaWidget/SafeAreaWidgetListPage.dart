import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/ImagePath.dart';
import '../../Routes/Routes.dart';

class SafeAreaWidgetListPage extends StatelessWidget {
  String title;
  SafeAreaWidgetListPage({super.key,this.title = 'SafeArea Widget'});

  List listData = [
    "Without Safe Area",
    "With Safe Area",
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
                            Get.toNamed(Routes.withoutsafeareapage);
                            break;
                          case 1:
                            Get.toNamed(Routes.withsafeareapage);
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