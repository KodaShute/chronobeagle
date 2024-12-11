import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, 1.0),
                  child: Container(
                    width: 380.0,
                    height: 700.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF1F4F8),
                      border: Border.all(
                        color: Colors.black,
                        width: 6.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-0.9, -0.96),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: FlutterFlowTheme.of(context).primary,
                    icon: Icon(
                      Icons.arrow_back,
                      color: FlutterFlowTheme.of(context).info,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.38, -1.16),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 159.0,
                    fillColor: const Color(0x0014181B),
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
        ),
      ),
    );
  }
}
