import 'package:flutteruidevkit/Screen/ScreenList/TimeLine.dart';
import 'package:flutteruidevkit/Screen/ScreenList/Verfication.dart';
import 'package:get/get.dart';
import '../Screen/ScreenList.dart';
import '../Screen/ScreenList/Contact.dart';
import '../Screen/ScreenList/ForgotPassword.dart';
import '../Screen/ScreenList/Home.dart';
import '../Screen/ScreenList/Notification.dart';
import '../Screen/ScreenList/OnBoardingPage/OnBoarding.dart';
import '../Screen/ScreenList/ProductList.dart';
import '../Screen/ScreenList/SignIn.dart';
import '../Screen/ScreenList/SignUp.dart';
import '../Screen/ScreenList/User.dart';
import '../Screen/ScreenList/UserProfile.dart';
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
  ];
}