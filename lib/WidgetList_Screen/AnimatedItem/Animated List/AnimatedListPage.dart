// import 'package:flutter/material.dart';
//
// class WidgetListPage extends StatefulWidget {
//   const WidgetListPage({super.key});
//
//   @override
//   State<WidgetListPage> createState() => _WidgetListPageState();
// }
//
// class _WidgetListPageState extends State<WidgetListPage> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/ImagePath.dart';
import '../../../Routes/Routes.dart';



class AnimatedListPage extends StatelessWidget {
  String title;
  AnimatedListPage({super.key,this.title = 'List View'});

  List listData = [
    "Animated List 1",
    "Animated List 2",
    "Animated List 3",
    "Animated List 4",
    "Animated List 5",
    "Animated List 6",
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
                            Get.toNamed(Routes.animatedlist1);
                            break;
                          case 1:
                            Get.toNamed(Routes.animatedlist2);
                            break;
                          case 2:
                            Get.toNamed(Routes.animatedlist3);
                            break;
                          case 3:
                            Get.toNamed(Routes.animatedlist4);
                            break;
                          case 4:
                            Get.toNamed(Routes.animatedlist5);
                            break;
                          case 5:
                            Get.toNamed(Routes.animatedlist6);
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
