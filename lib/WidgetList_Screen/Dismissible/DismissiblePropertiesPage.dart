import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class DismissiblePropertiesPage extends StatefulWidget {
  String title;
  DismissiblePropertiesPage({super.key,this.title = 'Dismissible - 2 Properties'});

  @override
  State<DismissiblePropertiesPage> createState() => _DismissiblePropertiesPageState();
}

class _DismissiblePropertiesPageState extends State<DismissiblePropertiesPage>  {

  List products = List<int>.generate(100, (index) => index);

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
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/bgImage.png"),fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding:  EdgeInsets.only(top: 2.h, left: 5.w,right: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dismissible - 2 Properties",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold),),
                    SizedBox(height: 1.h,),
                    Text("This is the example of Dismissible - 2 Properties",style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 1.h,),
                    Text("Example :-"),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return Dismissible(
                          background: Container(
                            color: Colors.redAccent,
                            child: Icon(Icons.delete_forever),
                          ),
                          key: ValueKey(products[index]),
                          onDismissed: (direction) {
                            setState(() {
                              products.removeAt(index);
                            });
                          },
                          child: Container(
                            child: ListTile(
                              title: Text("products ${products[index]}"),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
