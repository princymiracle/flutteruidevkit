import 'package:flutteruidevkit/Screen/ScreenList/OnBoardingPage/OnBoarding1.dart';
import 'package:flutteruidevkit/Screen/ScreenList/TimeLine.dart';
import 'package:flutteruidevkit/Screen/ScreenList/Verfication.dart';
import 'package:get/get.dart';
import '../Screen/ScreenList.dart';
import '../Screen/ScreenList/Contact.dart';
import '../Screen/ScreenList/ForgotPassword.dart';
import '../Screen/ScreenList/Home.dart';
import '../Screen/ScreenList/Notification.dart';
import '../Screen/ScreenList/OnBoardingPage/OnBoarding.dart';
import '../Screen/ScreenList/OnBoardingPage/OnBoarding2.dart';
import '../Screen/ScreenList/ProductList.dart';
import '../Screen/ScreenList/SignIn.dart';
import '../Screen/ScreenList/SignUp.dart';
import '../Screen/ScreenList/User.dart';
import '../Screen/ScreenList/UserProfile.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage2.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage3.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage4.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage5.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedListPage6.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFade.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFade2.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFadeListPage.dart';
import '../WidgetList_Screen/AnimatedItem/Animated List/AnimatedList1.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedPhysicalModel.dart';
import '../WidgetList_Screen/AnimatedItem/AnimateddeFaultTextstyle.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedOpacity.dart';
import '../WidgetList_Screen/WidgetListPage.dart';
import 'Routes.dart';

class Screens {
  static final routes = [
    GetPage(name: Routes.screenlistpage, page: () => ScreenListPage(),),
    GetPage(name: Routes.onboarding, page: () => OnBoarding(),),
    GetPage(name: Routes.signin, page: () => Signin(),),
    GetPage(name: Routes.signup, page: () => SignUp(),),
    GetPage(name: Routes.verfication, page: () => Verfication(),),
    GetPage(name: Routes.forgotpassword, page: () => ForgotPassword(),),
    GetPage(name: Routes.home, page: () => Home(),),
    GetPage(name: Routes.user, page: () => User(),),
    GetPage(name: Routes.userprofile, page: () => UserProfile(),),
    GetPage(name: Routes.contact, page: () => Contact(),),
    GetPage(name: Routes.productlist, page: () => ProductList(),),
    GetPage(name: Routes.timeline, page: () => TimeLine(),),
    GetPage(name: Routes.notification, page: () => Notification(),),
    GetPage(name: Routes.onboarding1, page: () => OnBoarding1(),),
    GetPage(name: Routes.onboarding2, page: () => OnBoarding2(),),

    //widget
    GetPage(name: Routes.widgetlistpage, page: () => WidgetListPage(),),

    GetPage(name: Routes.acrosslistpage, page: () => ACrossListPage(),),
    GetPage(name: Routes.animatedcrossfade, page: () => AnimatedCrossFadePage(),),
    GetPage(name: Routes.animatedcrossfade2, page: () => AnimatedCrossFadePage2(),),

    GetPage(name: Routes.animateddefaulttextstyle, page: () => AnimatedDefaultPage(),),

    GetPage(name: Routes.animatedlistpage, page: () => AnimatedListPage(),),
    GetPage(name: Routes.animatedlist1, page: () => AnimatedListPage1(),),
    GetPage(name: Routes.animatedlist2, page: () => AnimatedListPage2(),),
    GetPage(name: Routes.animatedlist3, page: () => AnimatedListPage3(),),
    GetPage(name: Routes.animatedlist4, page: () => AnimatedListPage4(),),
    GetPage(name: Routes.animatedlist5, page: () => AnimatedListPage5(),),
    GetPage(name: Routes.animatedlist6, page: () => AnimatedListPage6(),),

    GetPage(name: Routes.animatedopacity, page: () => AnimatedOpacityPage(),),
    GetPage(name: Routes.animatedephysicalmodel, page: () => AnimatedPhysicalPage(),),
  ];
}