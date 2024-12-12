import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/gestures.dart';
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
        backgroundColor: Color(0xFF254693),
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
                child: wrapWithModel(
                  model: _model.topbarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TopbarWidget(),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.64),
              child: Container(
                width: 382.0,
                height: 750.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  border: Border.all(
                    color: Color(0x33000000),
                    width: 7.0,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 6.0, 12.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Add Application',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.9, -0.7),
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
              alignment: AlignmentDirectional(-0.92, -0.71),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 48.0,
                  hoverColor: Color(0x2C020000),
                  icon: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.black,
                    size: 45.0,
                  ),
                  onPressed: () async {
                    context.safePop();
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.47),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('browseapplication pressed ...');
                  },
                  text: 'BROWSE APPLICATIONS',
                  options: FFButtonOptions(
                    width: 330.0,
                    height: 52.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFF56600),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.9),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Cancel pressed ...');
                  },
                  text: 'CANCEL',
                  options: FFButtonOptions(
                    width: 330.0,
                    height: 52.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFF56600),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -0.72),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1643193890858-2f888313ccf2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8Z3JleSUyMGNvbG91cnxlbnwwfHx8fDE3MzM5Nzg5OTZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
                  width: 256.0,
                  height: 4.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.3),
              child: Text(
                'OR',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 23.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.73),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('submit pressed ...');
                  },
                  text: 'SUBMIT',
                  options: FFButtonOptions(
                    width: 330.0,
                    height: 52.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: Color(0xFFF56600),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Inter Tight',
                          color: Colors.black,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.82, 0.32),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 120.0,
                fillColor: Color(0xFFF56600),
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.black,
                  size: 51.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.52, 0.09),
              child: Text(
                'Communication',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.91, 0.4),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 50.0,
                fillColor: Color(0x00F56600),
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.black,
                  size: 40.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.91, 0.08),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 50.0,
                fillColor: Color(0x00F56600),
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.black,
                  size: 40.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.91, 0.19),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 50.0,
                fillColor: Color(0x00F56600),
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.black,
                  size: 40.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.91, 0.3),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 50.0,
                fillColor: Color(0x00F56600),
                icon: Icon(
                  Icons.add_circle_outline_sharp,
                  color: Colors.black,
                  size: 40.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.67, 0.38),
              child: Text(
                '  Add\nImage',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.52, 0.3),
              child: Text(
                'Entertainment',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.55, 0.2),
              child: Text(
                'Social Media',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.59, 0.4),
              child: Text(
                'Shopping',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 17.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.04, -0.11),
              child: Container(
                width: 330.0,
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
                    hintText: 'Enter Application Name',
                    hintStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w900,
                            ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        letterSpacing: 0.0,
                      ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textControllerValidator.asValidator(context),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.72, -0.01),
              child: Text(
                'Application Category',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.07, -0.56),
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
              alignment: AlignmentDirectional(0.12, -0.22),
              child: Text(
                'Manually Add Application',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Inter',
                      fontSize: 15.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
