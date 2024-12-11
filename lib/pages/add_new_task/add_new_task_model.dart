import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_new_task_widget.dart' show AddNewTaskWidget;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddNewTaskModel extends FlutterFlowModel<AddNewTaskWidget> {
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
