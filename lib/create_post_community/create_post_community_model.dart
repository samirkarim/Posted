import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'create_post_community_widget.dart' show CreatePostCommunityWidget;
import 'package:flutter/material.dart';

class CreatePostCommunityModel
    extends FlutterFlowModel<CreatePostCommunityWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for PostCoummunityNameTextField widget.
  FocusNode? postCoummunityNameTextFieldFocusNode;
  TextEditingController? postCoummunityNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      postCoummunityNameTextFieldTextControllerValidator;
  // State field(s) for PostTitleTextField widget.
  FocusNode? postTitleTextFieldFocusNode;
  TextEditingController? postTitleTextFieldTextController;
  String? Function(BuildContext, String?)?
      postTitleTextFieldTextControllerValidator;
  // State field(s) for PostBodyTextField widget.
  FocusNode? postBodyTextFieldFocusNode;
  TextEditingController? postBodyTextFieldTextController;
  String? Function(BuildContext, String?)?
      postBodyTextFieldTextControllerValidator;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // Stores action output result for [Firestore Query - Query a collection] action in SubmitPostButton widget.
  CommunitiesRecord? queriedCommunity;
  // Stores action output result for [Backend Call - Create Document] action in SubmitPostButton widget.
  PostsRecord? newPost;
  // Stores action output result for [Backend Call - Create Document] action in SubmitPostButton widget.
  PostsRecord? newPostWithImage;
  // State field(s) for CommunityNameTextField widget.
  FocusNode? communityNameTextFieldFocusNode;
  TextEditingController? communityNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      communityNameTextFieldTextControllerValidator;
  // State field(s) for CommunityDescriptionTextField widget.
  FocusNode? communityDescriptionTextFieldFocusNode;
  TextEditingController? communityDescriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      communityDescriptionTextFieldTextControllerValidator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    postCoummunityNameTextFieldFocusNode?.dispose();
    postCoummunityNameTextFieldTextController?.dispose();

    postTitleTextFieldFocusNode?.dispose();
    postTitleTextFieldTextController?.dispose();

    postBodyTextFieldFocusNode?.dispose();
    postBodyTextFieldTextController?.dispose();

    communityNameTextFieldFocusNode?.dispose();
    communityNameTextFieldTextController?.dispose();

    communityDescriptionTextFieldFocusNode?.dispose();
    communityDescriptionTextFieldTextController?.dispose();
  }
}
