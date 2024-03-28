import 'package:flutter/material.dart';
import 'package:flutteruidevkit/Constants/ImagePath.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AnimatedCrossFadePage2 extends StatefulWidget {
  String title;
  AnimatedCrossFadePage2({super.key,this.title = 'Animated Cross Fade2 Between Widget'});

  @override
  State<AnimatedCrossFadePage2> createState() => _AnimatedCrossFadePage2State();
}

class _AnimatedCrossFadePage2State extends State<AnimatedCrossFadePage2> {
  bool first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back,color: Theme.of(context).primaryColorDark,size: 25,),),
        title: Text(widget.title,style: TextStyle(color: Theme.of(context).primaryColorDark,fontSize: 20,fontWeight: FontWeight.w600),),
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(ImagesPath.background,fit: BoxFit.cover,height: double.infinity,),
            Padding(
              padding:  EdgeInsets.only(left: 5.w,right: 5.w,top: 3.h),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Animated Cross Fade2 Between Widget",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Between Widget animated cress fade",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    SizedBox(height: 3.h,),
                    SizedBox(height: 3.h,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.all(16.0),
                          width: double.infinity,
                          height: 50,
                          color: Colors.grey,
                        ),
                        AnimatedCrossFade(
                          firstCurve: Curves.easeInCubic,
                          secondCurve: Curves.easeInCirc,
                          firstChild: InkWell(
                            onTap: () {
                              setState(() {
                                first = !first;
                              });
                            },
                            child: Container(
                              height: 200,
                              width: 230,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.lime.shade700),
                              child: Text(
                                'Hello !',
                                style: TextStyle(color: Colors.white, fontSize: 28),
                              ),
                              alignment: Alignment.center,
                            ),
                          ),
                          secondChild: InkWell(
                            onTap: () {
                              setState(() {
                                first = !first;
                              });
                            },
                            child: Container(
                              height: 150,
                              width: 150,
                              alignment: Alignment.center,
                              child: Text(
                                'Goodbye !',
                                style: TextStyle(color: Colors.black, fontSize: 30),
                              ),
                              color: Colors.amberAccent.shade700,
                            ),
                          ),
                          crossFadeState:
                          first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                          duration: Duration(seconds: 3),
                          layoutBuilder: (Widget topChild,Key topChildKey,Widget bottomChild,Key bottomChildKey,) {
                            return Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                PositionedDirectional(
                                  child: bottomChild,
                                  key: bottomChildKey,
                                  top: 0,
                                ),
                                PositionedDirectional(
                                  child: topChild,
                                  key: topChildKey,
                                ),
                              ],
                            );
                          },
                        ),
                        Container(
                          margin: EdgeInsets.all(16.0),
                          width: double.infinity,
                          height: 100,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
