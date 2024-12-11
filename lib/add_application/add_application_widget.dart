import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
                    height: 746.0,
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
                  alignment: const AlignmentDirectional(-0.92, -1.13),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://picsum.photos/seed/763/600',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(1.38, -1.33),
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
                Align(
                  alignment: const AlignmentDirectional(-0.91, -0.86),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 59.0,
                    fillColor: Colors.transparent,
                    icon: const Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.black,
                      size: 36.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.82, -0.86),
                  child: FlutterFlowIconButton(
                    borderRadius: 8.0,
                    buttonSize: 40.0,
                    fillColor: const Color(0x004B39EF),
                    icon: const Icon(
                      Icons.contact_support_outlined,
                      color: Colors.black,
                      size: 36.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, -0.87),
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
                  alignment: const AlignmentDirectional(0.01, -0.93),
                  child: Text(
                    'Add New Task',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 17.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w800,
                        ),
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
