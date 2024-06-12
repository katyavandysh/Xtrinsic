import '/flutter_flow/flutter_flow_util.dart';
import 'course_self_widget.dart' show CourseSelfWidget;
import 'package:flutter/material.dart';

class CourseSelfModel extends FlutterFlowModel<CourseSelfWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
