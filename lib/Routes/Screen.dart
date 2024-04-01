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
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFade.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFade2.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedCrossFade/AnimatedCrossFadeListPage.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedList.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedPhysicalModel.dart';
import '../WidgetList_Screen/ImageWidget/ImageWidgetPage.dart';
import '../WidgetList_Screen/OpacityWidget/TextOpacityPage.dart';
import '../WidgetList_Screen/RotationTransition/RotationTransitionPage.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedSize.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedWidget.dart';
import '../WidgetList_Screen/AnimatedItem/AnimateddeFaultTextstyle.dart';
import '../WidgetList_Screen/AnimatedItem/AnimatedOpacity.dart';
import '../WidgetList_Screen/AspectRatioItem/AspectRatio.dart';
import '../WidgetList_Screen/CardItem/BorderRadiusCard.dart';
import '../WidgetList_Screen/CardItem/CardListPage.dart';
import '../WidgetList_Screen/CardItem/ElevationCard.dart';
import '../WidgetList_Screen/CardItem/ShadowColorCard.dart';
import '../WidgetList_Screen/CardItem/StandartCard.dart';
import '../WidgetList_Screen/DataTable/DataTableWidget.dart';
import '../WidgetList_Screen/DecoratedBoxTransition/DecoratedBoxTransitionPage.dart';
import '../WidgetList_Screen/Dismissible/DismissibleListPage.dart';
import '../WidgetList_Screen/Dismissible/DismissiblePropertiesPage.dart';
import '../WidgetList_Screen/Dismissible/DismissibleStandartPage.dart';
import '../WidgetList_Screen/DrawerItem/DrawerCustomHeaderPage.dart';
import '../WidgetList_Screen/DrawerItem/DrawerCustomShapePage.dart';
import '../WidgetList_Screen/DrawerItem/DrawerListPage.dart';
import '../WidgetList_Screen/DrawerItem/DrawerRight.dart';
import '../WidgetList_Screen/DrawerItem/StandartDrawerPage.dart';
import '../WidgetList_Screen/HeroWidget/HeroWidgetPage.dart';
import '../WidgetList_Screen/SafeAreaWidget/SafeAreaWidgetListPage.dart';
import '../WidgetList_Screen/SafeAreaWidget/WithSafeAreaPage.dart';
import '../WidgetList_Screen/SafeAreaWidget/WithoutSafeAreaPage.dart';
import '../WidgetList_Screen/ScaleTransition/ScaleTransitionWidget.dart';
import '../WidgetList_Screen/SizeTransition/SizeTransitionPage.dart';
import '../WidgetList_Screen/SnackBarWidget/FloatingSnackbarPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarColorPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarListPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarWithActionPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarWithDurationPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarWithMarginPage.dart';
import '../WidgetList_Screen/SnackBarWidget/SnackBarwithShapePage.dart';
import '../WidgetList_Screen/SnackBarWidget/StandartSnackBarPage.dart';
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

    GetPage(name: Routes.animatedlist, page: () => AnimatedListPage(),),

    GetPage(name: Routes.animatedopacity, page: () => AnimatedOpacityPage(),),
    GetPage(name: Routes.animatedephysicalmodel, page: () => AnimatedPhysicalPage(),)
    ,
    GetPage(name: Routes.animatedsizepage, page: () => AnimatedSizePage(),),

    GetPage(name: Routes.animatedwidgetpage, page: () => AnimatedWidgetPage(),),

    GetPage(name: Routes.aspectratiopage, page: () => AspectRatioPage(),),

    GetPage(name: Routes.cardlistpage, page: () => CardListPage(),),
    GetPage(name: Routes.standartcardpage, page: () => StandartCardPage(),),
    GetPage(name: Routes.borderradiuscardpage, page: () => BorderRadiusCardPage(),),
    GetPage(name: Routes.elevationcardpage, page: () => ElevationCardPage(),),
    GetPage(name: Routes.shadowcolorcardpage, page: () => ShadowColorCardPage(),),

    GetPage(name: Routes.decoratedboxtransitionpage, page: () => DecoratedBoxTransitionPage(),),

    GetPage(name: Routes.datatablepage, page: () => DataTablePage(),),

    GetPage(name: Routes.dismissiblelistpage, page: () => DismissibleListPage(),),
    GetPage(name: Routes.dismissiblestandartpage, page: () => DismissibleStandartPage(),),
    GetPage(name: Routes.dismissiblepropertiespage, page: () => DismissiblePropertiesPage(),),

    GetPage(name: Routes.drawerlistpage, page: () => DrawerListPage(),),
    GetPage(name: Routes.standartdrawerpage, page: () => StandartDrawerPage(),),
    GetPage(name: Routes.drawerrightpage, page: () => DrawerRightPage(),),
    GetPage(name: Routes.drawercustomheaderpage, page: () => DrawerCustomHeaderPage(),),
    GetPage(name: Routes.drawercustomshapepage, page: () => DrawerCustomShapePage(),),

    GetPage(name: Routes.rotationtransitionpage, page: () => RotationTransitionPage(),),

    GetPage(name: Routes.herowidgetpage, page: () => HeroWidgetPage(),),

    GetPage(name: Routes.imagewidgetpage, page: () => ImageWidgetPage(),),

    GetPage(name: Routes.textopacitypage, page: () => TextOpacityPage(),),

    GetPage(name: Routes.safeareawidgetlistpage, page: () => SafeAreaWidgetListPage(),),
    GetPage(name: Routes.withoutsafeareapage, page: () => WithoutSafeAreaPage(),),
    GetPage(name: Routes.withsafeareapage, page: () => WithSafeAreaPage(),),

    GetPage(name: Routes.scaletransitionpage, page: () => ScaleTransitionPage(),),

    GetPage(name: Routes.SizeTransitionPage, page: () => SizeTransitionPage(),),

    GetPage(name: Routes.snackbarlistpage, page: () => SnackBarListPage(),),
    GetPage(name: Routes.standartsnackbarpage, page: () => StandartSnackBarPage(),),
    GetPage(name: Routes.snackbarcolorpage, page: () => SnackBarColorPage(),),
    GetPage(name: Routes.snackbarwithactionpage, page: () => SnackBarWithActionPage(),),
    GetPage(name: Routes.snackbarwithdurationpage, page: () => SnackBarWithDurationPage(),),
    GetPage(name: Routes.floatingsnackbarpage, page: () => FloatingSnackbarPage(),),
    GetPage(name: Routes.snackbarwithmarginpage, page: () => SnackBarWithMarginPage(),),
    GetPage(name: Routes.snackbarwithshapepage, page: () => SnackBarwithShapePage(),),

  ];
}