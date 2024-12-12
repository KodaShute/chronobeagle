import '/components/topbaracc_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topbaracc component.
  late TopbaraccModel topbaraccModel;
  // State field(s) for name_Register widget.
  FocusNode? nameRegisterFocusNode;
  TextEditingController? nameRegisterTextController;
  String? Function(BuildContext, String?)? nameRegisterTextControllerValidator;
  // State field(s) for emailAddress_Register widget.
  FocusNode? emailAddressRegisterFocusNode;
  TextEditingController? emailAddressRegisterTextController;
  String? Function(BuildContext, String?)?
      emailAddressRegisterTextControllerValidator;
  // State field(s) for password_Register widget.
  FocusNode? passwordRegisterFocusNode;
  TextEditingController? passwordRegisterTextController;
  late bool passwordRegisterVisibility;
  String? Function(BuildContext, String?)?
      passwordRegisterTextControllerValidator;
  // State field(s) for passwordconfirm_Register widget.
  FocusNode? passwordconfirmRegisterFocusNode;
  TextEditingController? passwordconfirmRegisterTextController;
  late bool passwordconfirmRegisterVisibility;
  String? Function(BuildContext, String?)?
      passwordconfirmRegisterTextControllerValidator;

  @override
  void initState(BuildContext context) {
    topbaraccModel = createModel(context, () => TopbaraccModel());
    passwordRegisterVisibility = false;
    passwordconfirmRegisterVisibility = false;
  }

  @override
  void dispose() {
    topbaraccModel.dispose();
    nameRegisterFocusNode?.dispose();
    nameRegisterTextController?.dispose();

    emailAddressRegisterFocusNode?.dispose();
    emailAddressRegisterTextController?.dispose();

    passwordRegisterFocusNode?.dispose();
    passwordRegisterTextController?.dispose();

    passwordconfirmRegisterFocusNode?.dispose();
    passwordconfirmRegisterTextController?.dispose();
  }
}
