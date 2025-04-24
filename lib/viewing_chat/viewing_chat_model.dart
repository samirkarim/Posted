import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'viewing_chat_widget.dart' show ViewingChatWidget;
import 'package:flutter/material.dart';

class ViewingChatModel extends FlutterFlowModel<ViewingChatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
