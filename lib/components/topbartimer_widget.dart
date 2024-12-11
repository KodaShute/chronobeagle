import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'topbartimer_model.dart';
export 'topbartimer_model.dart';

class TopbartimerWidget extends StatefulWidget {
  const TopbartimerWidget({super.key});

  @override
  State<TopbartimerWidget> createState() => _TopbartimerWidgetState();
}

class _TopbartimerWidgetState extends State<TopbartimerWidget> {
  late TopbartimerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopbartimerModel());

    _model.switchValue = true;
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
      height: 70.0,
      constraints: BoxConstraints(
        maxWidth: 570.0,
      ),
      decoration: BoxDecoration(),
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/cblogo.png',
                  width: 48.0,
                  height: 48.0,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Switch.adaptive(
              value: _model.switchValue!,
              onChanged: (newValue) async {
                safeSetState(() => _model.switchValue = newValue!);
              },
              activeColor: Color(0xFFF56600),
              activeTrackColor: FlutterFlowTheme.of(context).primaryBackground,
              inactiveTrackColor:
                  FlutterFlowTheme.of(context).primaryBackground,
              inactiveThumbColor: Color(0xFF254693),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 0.0),
                child: FlutterFlowIconButton(
                  buttonSize: 48.0,
                  hoverColor: Color(0xFFF56600),
                  icon: Icon(
                    Icons.settings_sharp,
                    color: Colors.black,
                    size: 48.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Settings_main');
                  },
                ),
              ),
            ),
          ].divide(SizedBox(width: 0.0)),
        ),
      ),
    );
  }
}
