import 'package:baseapp/routes/routes.dart';
import 'package:get/get.dart';

import '../features/Login/controller.dart';
import '../features/Login/view/login_view.dart';


class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: Routes.login,
      page: () => LoginPage(),
      binding: BindingsBuilder.put(
        () => LoginController(),
      ),
    ),
  ];
}
