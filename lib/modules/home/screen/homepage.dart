import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedulerapp/modules/schedule/screen/schedulerpage.dart';
import 'package:sizer/sizer.dart';

import '../../schedule/controller/schedulercontroller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<SchedulerController>(
            id: Get.find<SchedulerController>().schedulewidget,
            builder: (controller) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    (controller.msg == "")
                        ? Text("")
                        : Text(
                            controller.totalmsg,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                    TextButton(
                        onPressed: () {
                          controller.msg = "";
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => SchedulerPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: Colors.purple))),
                        ),
                        child: (controller.saveddata.isEmpty)
                            ? Text(
                                "schedule",
                                style: TextStyle(fontSize: 20.sp),
                              )
                            : Text("edit", style: TextStyle(fontSize: 20.sp)))
                  ],
                ),
              );
            }));
  }
}
