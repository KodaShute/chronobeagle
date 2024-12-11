import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'settings_main_widget.dart' show SettingsMainWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsMainModel extends FlutterFlowModel<SettingsMainWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topbar component.
  late TopbarModel topbarModel;

  @override
  void initState(BuildContext context) {
    topbarModel = createModel(context, () => TopbarModel());
  }

  @override
  void dispose() {
    topbarModel.dispose();
  }
}
