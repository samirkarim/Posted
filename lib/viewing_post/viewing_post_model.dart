import '/flutter_flow/flutter_flow_util.dart';
import 'viewing_post_widget.dart' show ViewingPostWidget;
import 'package:flutter/material.dart';

class ViewingPostModel extends FlutterFlowModel<ViewingPostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
