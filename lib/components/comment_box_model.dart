import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comment_box_widget.dart' show CommentBoxWidget;
import 'package:flutter/material.dart';

class CommentBoxModel extends FlutterFlowModel<CommentBoxWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for commentTextField widget.
  FocusNode? commentTextFieldFocusNode;
  TextEditingController? commentTextFieldTextController;
  String? Function(BuildContext, String?)?
      commentTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  CommentsRecord? newComment;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    commentTextFieldFocusNode?.dispose();
    commentTextFieldTextController?.dispose();
  }
}
