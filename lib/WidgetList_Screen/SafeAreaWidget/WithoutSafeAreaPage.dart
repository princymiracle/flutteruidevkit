import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../Constants/ImagePath.dart';

class WithoutSafeAreaPage extends StatefulWidget {
  String title;
  WithoutSafeAreaPage({super.key,this.title = 'Without SafeArea'});

  @override
  _WithoutSafeAreaPageState createState() => _WithoutSafeAreaPageState();
}

class _WithoutSafeAreaPageState extends State<WithoutSafeAreaPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.pink,child: Text("q w e r t y u i o p l k j h g f d s a z x c v b n m j u i h r f c g h b e q s z f o j y e f s n m k i g e w q a z x c v b n m k l p o i u y t r e w s d f g h")),
    );
  }
}