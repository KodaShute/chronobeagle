import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_new_task_widget.dart' show AddNewTaskWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewTaskModel extends FlutterFlowModel<AddNewTaskWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topbar component.
  late TopbarModel topbarModel;
  // State field(s) for Timer widget.
  final timerInitialTimeMs1 = 60000;
  int timerMilliseconds1 = 60000;
  String timerValue1 = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController1 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for Timer widget.
  final timerInitialTimeMs2 = 60000;
  int timerMilliseconds2 = 60000;
  String timerValue2 = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController2 =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {
    topbarModel = createModel(context, () => TopbarModel());
  }

  @override
  void dispose() {
    topbarModel.dispose();
    timerController1.dispose();
    timerController2.dispose();
  }
}
