import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'timer_model.dart';
export 'timer_model.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({super.key});

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late TimerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TimerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: FlutterFlowTimer(
                initialTime: _model.timerInitialTimeMs,
                getDisplayTime: (value) =>
                    StopWatchTimer.getDisplayTime(value, milliSecond: false),
                controller: _model.timerController,
                updateStateInterval: const Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.timerMilliseconds = value;
                  _model.timerValue = displayTime;
                  if (shouldUpdate) safeSetState(() {});
                },
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Inter Tight',
                      fontSize: 80.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.18, 0.26),
              child: Text(
                '  MINUTES \nREMAINING',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 40.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-0.01, 0.91),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onDoubleTap: () async {
                  _model.timerController.onStopTimer();
                },
                onLongPress: () async {
                  _model.timerController.onResetTimer();
                },
                child: FlutterFlowIconButton(
                  borderColor: Colors.black,
                  borderRadius: 48.0,
                  borderWidth: 5.0,
                  buttonSize: 102.0,
                  fillColor: const Color(0xFFFF8D00),
                  icon: const Icon(
                    Icons.pause,
                    color: Colors.black,
                    size: 80.0,
                  ),
                  onPressed: () async {
                    _model.timerController.onStartTimer();
                  },
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.03, -0.96),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 100.0,
                fillColor: const Color(0x004B39EF),
                icon: const Icon(
                  Icons.arrow_circle_left_outlined,
                  color: Colors.black,
                  size: 50.0,
                ),
                onPressed: () async {
                  context.pushNamed('Login');
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.97, -0.94),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 82.0,
                fillColor: const Color(0x004B39EF),
                icon: const Icon(
                  Icons.settings_outlined,
                  color: Colors.black,
                  size: 54.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
