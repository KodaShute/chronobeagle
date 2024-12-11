import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_application_model.dart';
export 'add_application_model.dart';

class AddApplicationWidget extends StatefulWidget {
  const AddApplicationWidget({super.key});

  @override
  State<AddApplicationWidget> createState() => _AddApplicationWidgetState();
}

class _AddApplicationWidgetState extends State<AddApplicationWidget> {
  late AddApplicationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddApplicationModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {
          _model.textController?.text = 'Enter application name';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: AlignmentDirectional(0.0, -1.0),
          child: Stack(
            children: [
              wrapWithModel(
                model: _model.topbarModel,
                updateCallback: () => safeSetState(() {}),
                child: TopbarWidget(),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, -0.68),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 59.0,
                  fillColor: Colors.transparent,
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.black,
                    size: 43.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.06, -0.73),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1603366615917-1fa6dad5c4fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyNHx8YmxhY2t8ZW58MHx8fHwxNzMzODM3OTU4fDA&ixlib=rb-4.0.3&q=80&w=1080',
                    width: 340.0,
                    height: 5.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.8),
                child: Text(
                  'Add Application',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.95, -0.68),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 30.0,
                    buttonSize: 48.0,
                    hoverColor: Color(0xFFF56600),
                    icon: FaIcon(
                      FontAwesomeIcons.solidQuestionCircle,
                      color: Color(0xFFF56600),
                      size: 36.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.56),
                child: Text(
                  'Add an application and category type to track',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 15.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, -0.5),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'BROWSE APPLICATIONS',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF56600),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w900,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.36),
                child: Text(
                  'OR',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.06, -0.28),
                child: Text(
                  'Manually Add Application',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.1, -0.14),
                child: Container(
                  width: 300.0,
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintText: 'E',
                      hintStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.8),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'SUBMIT',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF56600),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w900,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.01, 0.93),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'CANCEL',
                    options: FFButtonOptions(
                      width: 300.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF56600),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Inter Tight',
                                letterSpacing: 2.0,
                                fontWeight: FontWeight.w900,
                              ),
                      elevation: 0.0,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.52),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  buttonSize: 49.0,
                  fillColor: Color(0x004B39EF),
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.08),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 49.0,
                  fillColor: Color(0x004B39EF),
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.22),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 49.0,
                  fillColor: Color(0x004B39EF),
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.94, 0.36),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 8.0,
                  buttonSize: 49.0,
                  fillColor: Color(0x004B39EF),
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.black,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.56, 0.51),
                child: Text(
                  'Shopping',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.5, 0.09),
                child: Text(
                  'Communication',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.53, 0.22),
                child: Text(
                  'Social Media',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.5, 0.36),
                child: Text(
                  'Entertainment',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, 0.38),
                child: FlutterFlowIconButton(
                  borderColor: Colors.black,
                  borderRadius: 8.0,
                  borderWidth: 3.0,
                  buttonSize: 159.0,
                  fillColor: Color(0xFFF56600),
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: 50.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.54, -0.03),
                child: Text(
                  'Application Category',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.57, 0.43),
                child: Text(
                  '  Add\nImage',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 18.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
