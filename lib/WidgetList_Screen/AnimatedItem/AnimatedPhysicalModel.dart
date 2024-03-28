//AnimatedPhysicalPage

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../Constants/ImagePath.dart';

class AnimatedPhysicalPage extends StatefulWidget {
  String title;
  AnimatedPhysicalPage({super.key,this.title = 'Animated Physical'});

  @override
  State<AnimatedPhysicalPage> createState() => _AnimatedPhysicalPageState();
}

class _AnimatedPhysicalPageState extends State<AnimatedPhysicalPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        leading: IconButton(onPressed: () => Get.back(),icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: SafeArea(
        child: Container(width: double.infinity,height: double.infinity,padding: EdgeInsets.all(1.w),
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage(ImagesPath.background),fit: BoxFit.cover)),
          child: Container(
            child: Padding(
              padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Animated Physical",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1.h,),
                  Text("This is the example of Animated Physical",style: TextStyle(color: Colors.grey),),
                  SizedBox(height: 1.h,),
                  Text("Example :-"),
                  SizedBox(height: 3.h,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
