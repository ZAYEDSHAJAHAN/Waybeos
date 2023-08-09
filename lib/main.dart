import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedulerapp/modules/home/screen/homepage.dart';
import 'package:sizer/sizer.dart';

import 'modules/schedule/controller/schedulercontroller.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await PackageInfo.fromPlatform();
  // await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Scheduler App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Homepage(),
        initialBinding: GetxBindings(),
      );
    });
  }
}

class GetxBindings extends Bindings {
  @override
  void dependencies() {
    initializeGetxController();
  }
}

initializeGetxController() {
  Get.put<SchedulerController>(SchedulerController(), permanent: false);
}
