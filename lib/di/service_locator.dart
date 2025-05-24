import 'package:baseapp/features/Login/controller.dart';
import 'package:baseapp/features/Login/data/api/login_api.dart';
import 'package:baseapp/features/Login/data/repository/login_repository.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../core/local/shared_pref/helper.dart';
import '../core/local/shared_pref/preference.dart';
import '../core/network/client/dio_client.dart';

Future<void> setupLocator() async {
  // singletons:----------------------------------------------------------------

  //Main Preference call initialization...............
  Get.put(Preference());
  await Preference.load();


  Get.lazyPut(() => SharedPreferenceHelper(), fenix: true);

  Get.put(DioClient(Dio()));
  final dioClient = Get.find<DioClient>();



  Get.lazyPut(() => LoginApi(dioClient), fenix: true);
  Get.lazyPut<LoginRepository>(
          () => LoginRepository(loginApi: Get.find<LoginApi>()),
      fenix: true);
  Get.lazyPut<LoginController>(() => LoginController(), fenix: true);

  }
