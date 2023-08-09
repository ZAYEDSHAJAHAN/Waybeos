import 'package:get/get.dart';

class SchedulerController extends GetxController {
  String get schedulewidget => 'schedulewidget';
  Map<int, List<bool>> saveddata = {};
  List<bool> boolfirst = [false, false, false, false, false, false, false];
  Map<int, List<bool>> selected = {
    0: [false, false, false],
    1: [false, false, false],
    2: [false, false, false],
    3: [false, false, false],
    4: [false, false, false],
    5: [false, false, false],
    6: [false, false, false]
  };
  String msg = "";
  String totalmsg = "Hi jose you are available in ";
  void dayselecting(int index) {
    boolfirst[index] = !boolfirst[index];

    update([schedulewidget]);
  }

  void daytimingselecting(int index, int subindex) {
    selected[index]?[subindex] = !selected[index]![subindex];
    // print(selected);
    update([schedulewidget]);
  }

  savevalues() {
    saveddata = selected;

    print("*********************");
    print(saveddata);
  }

  printingstatement() {
    List<int> trueIndices = boolfirst
        .asMap()
        .entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();
    print("*********************");
    print(trueIndices);

    trueIndices.forEach((element) {
      if (element == 0) {
        String day = " Sunday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 1) {
        String day = " monday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 2) {
        String day = " tueday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 3) {
        String day = " wednesday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 4) {
        String day = " thursday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 5) {
        String day = " friday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      } else if (element == 6) {
        String day = " saturday ";
        List<int> daytimetrue = saveddata[element]!
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print(daytimetrue);
        if (daytimetrue.isNotEmpty) {
          if (daytimetrue.length == 3) {
            String abc = "${day}is wholeday availble";
            msg = msg + abc;
          } else {
            daytimetrue.forEach((element) {
              if (element == 0) {
                String abc = "${day}moring";
                msg = msg + abc;
              }
              if (element == 1) {
                String abc = " ${day}afternoon";
                msg = msg + abc;
              }
              if (element == 2) {
                String abc = "${day}evening";
                msg = msg + abc;
              }
            });
          }
        }
      }
    });

    print(msg);
    totalmsg = "$totalmsg$msg";
    print(totalmsg);
  }
}
