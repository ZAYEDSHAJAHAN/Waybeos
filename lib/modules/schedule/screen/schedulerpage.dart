import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:schedulerapp/modules/schedule/controller/schedulercontroller.dart';
import 'package:sizer/sizer.dart';

import '../../home/screen/homepage.dart';

class SchedulerPage extends StatefulWidget {
  const SchedulerPage({super.key});

  @override
  State<SchedulerPage> createState() => _SchedulerPageState();
}

class _SchedulerPageState extends State<SchedulerPage> {
  List weekday = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"];
  List timing = ["Morning", "Afternoon", "Evening"];

  SchedulerController controller = Get.find<SchedulerController>();

  Color selectedcolor = Colors.deepPurple;
  Color unselectedcolor = Colors.grey;
  Color colorbutton = Colors.grey;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((duration) {});
    return Scaffold(
      body: GetBuilder<SchedulerController>(
          id: Get.find<SchedulerController>().schedulewidget,
          builder: (controller) {
            return SafeArea(
                child: Column(
              children: [
                Text(
                  "Set yours weekly hours",
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Transform.scale(
                                    scale: 1.5,
                                    child: Checkbox(
                                      checkColor: Colors.white,
                                      fillColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                              (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.disabled)) {
                                          return Colors.green.withOpacity(.32);
                                        }
                                        return Colors.green;
                                      }),
                                      value: controller.boolfirst[index],
                                      shape: CircleBorder(),
                                      onChanged: (bool? value) {
                                        Get.find<SchedulerController>()
                                            .dayselecting(index);
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(2.5.h),
                                    child: Text(
                                      weekday[index],
                                      style: TextStyle(
                                          fontSize: 13.5.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  (controller.boolfirst[index] == false
                                      ? Text(
                                          "Unavailable",
                                          style: TextStyle(
                                              fontSize: 12.sp,
                                              color: Colors.grey),
                                        )
                                      : Expanded(
                                          child: SizedBox(
                                            height: 5.h,
                                            child: ListView.separated(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemBuilder:
                                                    (context, subindex) {
                                                  return TextButton(
                                                    onPressed: () {
                                                      controller
                                                          .daytimingselecting(
                                                              index, subindex);
                                                    },
                                                    child: Text(
                                                      timing[subindex],
                                                      style: TextStyle(
                                                          color: (controller.selected[
                                                                          index]
                                                                      ?[
                                                                      subindex] ==
                                                                  true
                                                              ? selectedcolor
                                                              : unselectedcolor)),
                                                    ),
                                                    style: ButtonStyle(
                                                        shape: MaterialStateProperty.all<
                                                                RoundedRectangleBorder>(
                                                            RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            18.0),
                                                                side: BorderSide(
                                                                    color: controller.selected[index]?[subindex] ==
                                                                            true
                                                                        ? selectedcolor
                                                                        : unselectedcolor)))),
                                                  );
                                                },
                                                separatorBuilder:
                                                    (context, subindex) =>
                                                        SizedBox(
                                                          width: 2.5.w,
                                                        ),
                                                itemCount: 3),
                                          ),
                                        ))
                                ],
                              ),
                              Divider(
                                color: unselectedcolor,
                                height: 0.1.h,
                                thickness: 0.4,
                              )
                            ],
                          );

                          // dayselector(weekday[index], boolfirst[index]);
                        },
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2.5.h,
                            ),
                        itemCount: 7),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                  width: 50.w,
                  child: TextButton(
                    onPressed: () {
                      controller.savevalues();
                      controller.printingstatement();
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ),
                      );
                    },
                    child: Text("save"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: colorbutton))),
                    ),
                  ),
                )
              ],
            ));
          }),
    );
  }
}
