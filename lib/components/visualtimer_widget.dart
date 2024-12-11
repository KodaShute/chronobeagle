import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'visualtimer_model.dart';
export 'visualtimer_model.dart';

class VisualtimerWidget extends StatefulWidget {
  const VisualtimerWidget({super.key});

  @override
  State<VisualtimerWidget> createState() => _VisualtimerWidgetState();
}

class _VisualtimerWidgetState extends State<VisualtimerWidget> {
  late VisualtimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VisualtimerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      constraints: BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(),
      child: LinearPercentIndicator(
        percent: 0.9,
        width: 393.0,
        lineHeight: 852.0,
        animation: true,
        animateFromLastPercent: true,
        progressColor: Color(0xFF254693),
        backgroundColor: FlutterFlowTheme.of(context).accent4,
        padding: EdgeInsets.zero,
      ),
    );
  }
}
