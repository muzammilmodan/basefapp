
import 'package:baseapp/routes/pages.dart';
import 'package:baseapp/utils/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'core/local/shared_pref/helper.dart';
import 'features/Login/view/login_view.dart';

class MyApp extends StatefulWidget {
  MyApp();

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? firstTime = true;

  @override
  void initState() {
    super.initState();
  }

  final sharedPref = Get.find<SharedPreferenceHelper>();

  @override
  Widget build(BuildContext context) {
    Widget _landingPage;
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    _landingPage = LoginPage();

    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: themeNotifier.getTheme(),
          title: 'My App',
          home: _landingPage,
          builder: EasyLoading.init(),
          getPages: AppPages.pages,
          routes: <String, WidgetBuilder>{
            '/login': (BuildContext context) => new LoginPage(),
          }),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
