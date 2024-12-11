import '/components/topbar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_new_task_model.dart';
export 'add_new_task_model.dart';

class AddNewTaskWidget extends StatefulWidget {
  const AddNewTaskWidget({super.key});

  @override
  State<AddNewTaskWidget> createState() => _AddNewTaskWidgetState();
}

class _AddNewTaskWidgetState extends State<AddNewTaskWidget> {
  late AddNewTaskModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddNewTaskModel());
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
          alignment: AlignmentDirectional(-0.1, -1.0),
          child: Stack(
            children: [
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
                  'Add New Task',
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
                alignment: AlignmentDirectional(-0.02, 0.4),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'HOURS',
                    options: FFButtonOptions(
                      width: 112.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF56600),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Inter Tight',
                                fontSize: 10.0,
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
                alignment: AlignmentDirectional(0.02, -0.44),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'SELECT DATE',
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
                alignment: AlignmentDirectional(-0.88, 0.38),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  borderWidth: 3.0,
                  buttonSize: 105.0,
                  fillColor: Color(0xFFF56600),
                  icon: Icon(
                    Icons.remove_circle_outline,
                    color: Colors.black,
                    size: 50.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.02, -0.31),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'SELECT TASK',
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
                alignment: AlignmentDirectional(0.82, 0.38),
                child: FlutterFlowIconButton(
                  borderRadius: 8.0,
                  borderWidth: 3.0,
                  buttonSize: 105.0,
                  fillColor: Color(0xFFF56600),
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.black,
                    size: 50.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.28),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'MINUTES',
                    options: FFButtonOptions(
                      width: 112.0,
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: Color(0xFFF56600),
                      textStyle:
                          FlutterFlowTheme.of(context).titleLarge.override(
                                fontFamily: 'Inter Tight',
                                fontSize: 10.0,
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
                alignment: AlignmentDirectional(0.02, 0.8),
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
                alignment: AlignmentDirectional(0.02, 0.66),
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
              wrapWithModel(
                model: _model.topbarModel,
                updateCallback: () => safeSetState(() {}),
                child: TopbarWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
