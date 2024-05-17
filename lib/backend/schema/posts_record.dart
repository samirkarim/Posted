import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostsRecord extends FirestoreRecord {
  PostsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "postTitle" field.
  String? _postTitle;
  String get postTitle => _postTitle ?? '';
  bool hasPostTitle() => _postTitle != null;

  // "postCreationDateTime" field.
  DateTime? _postCreationDateTime;
  DateTime? get postCreationDateTime => _postCreationDateTime;
  bool hasPostCreationDateTime() => _postCreationDateTime != null;

  // "postLikes" field.
  List<DocumentReference>? _postLikes;
  List<DocumentReference> get postLikes => _postLikes ?? const [];
  bool hasPostLikes() => _postLikes != null;

  // "postBody" field.
  String? _postBody;
  String get postBody => _postBody ?? '';
  bool hasPostBody() => _postBody != null;

  // "community_ref" field.
  DocumentReference? _communityRef;
  DocumentReference? get communityRef => _communityRef;
  bool hasCommunityRef() => _communityRef != null;

  // "postImage" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "posterName" field.
  String? _posterName;
  String get posterName => _posterName ?? '';
  bool hasPosterName() => _posterName != null;

  // "posterCreator" field.
  DocumentReference? _posterCreator;
  DocumentReference? get posterCreator => _posterCreator;
  bool hasPosterCreator() => _posterCreator != null;

  // "posterID" field.
  String? _posterID;
  String get posterID => _posterID ?? '';
  bool hasPosterID() => _posterID != null;

  // "hasImage" field.
  bool? _hasImage;
  bool get hasImage => _hasImage ?? false;
  bool hasHasImage() => _hasImage != null;

  // "postDislikes" field.
  List<DocumentReference>? _postDislikes;
  List<DocumentReference> get postDislikes => _postDislikes ?? const [];
  bool hasPostDislikes() => _postDislikes != null;

  // "postLikesDislikesTotal" field.
  int? _postLikesDislikesTotal;
  int get postLikesDislikesTotal => _postLikesDislikesTotal ?? 0;
  bool hasPostLikesDislikesTotal() => _postLikesDislikesTotal != null;

  // "postComments" field.
  List<DocumentReference>? _postComments;
  List<DocumentReference> get postComments => _postComments ?? const [];
  bool hasPostComments() => _postComments != null;

  void _initializeFields() {
    _postTitle = snapshotData['postTitle'] as String?;
    _postCreationDateTime = snapshotData['postCreationDateTime'] as DateTime?;
    _postLikes = getDataList(snapshotData['postLikes']);
    _postBody = snapshotData['postBody'] as String?;
    _communityRef = snapshotData['community_ref'] as DocumentReference?;
    _postImage = snapshotData['postImage'] as String?;
    _posterName = snapshotData['posterName'] as String?;
    _posterCreator = snapshotData['posterCreator'] as DocumentReference?;
    _posterID = snapshotData['posterID'] as String?;
    _hasImage = snapshotData['hasImage'] as bool?;
    _postDislikes = getDataList(snapshotData['postDislikes']);
    _postLikesDislikesTotal =
        castToType<int>(snapshotData['postLikesDislikesTotal']);
    _postComments = getDataList(snapshotData['postComments']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostsRecord.fromSnapshot(s));

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostsRecord.fromSnapshot(s));

  static PostsRecord fromSnapshot(DocumentSnapshot snapshot) => PostsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostsRecordData({
  String? postTitle,
  DateTime? postCreationDateTime,
  String? postBody,
  DocumentReference? communityRef,
  String? postImage,
  String? posterName,
  DocumentReference? posterCreator,
  String? posterID,
  bool? hasImage,
  int? postLikesDislikesTotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postTitle': postTitle,
      'postCreationDateTime': postCreationDateTime,
      'postBody': postBody,
      'community_ref': communityRef,
      'postImage': postImage,
      'posterName': posterName,
      'posterCreator': posterCreator,
      'posterID': posterID,
      'hasImage': hasImage,
      'postLikesDislikesTotal': postLikesDislikesTotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostsRecordDocumentEquality implements Equality<PostsRecord> {
  const PostsRecordDocumentEquality();

  @override
  bool equals(PostsRecord? e1, PostsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.postTitle == e2?.postTitle &&
        e1?.postCreationDateTime == e2?.postCreationDateTime &&
        listEquality.equals(e1?.postLikes, e2?.postLikes) &&
        e1?.postBody == e2?.postBody &&
        e1?.communityRef == e2?.communityRef &&
        e1?.postImage == e2?.postImage &&
        e1?.posterName == e2?.posterName &&
        e1?.posterCreator == e2?.posterCreator &&
        e1?.posterID == e2?.posterID &&
        e1?.hasImage == e2?.hasImage &&
        listEquality.equals(e1?.postDislikes, e2?.postDislikes) &&
        e1?.postLikesDislikesTotal == e2?.postLikesDislikesTotal &&
        listEquality.equals(e1?.postComments, e2?.postComments);
  }

  @override
  int hash(PostsRecord? e) => const ListEquality().hash([
        e?.postTitle,
        e?.postCreationDateTime,
        e?.postLikes,
        e?.postBody,
        e?.communityRef,
        e?.postImage,
        e?.posterName,
        e?.posterCreator,
        e?.posterID,
        e?.hasImage,
        e?.postDislikes,
        e?.postLikesDislikesTotal,
        e?.postComments
      ]);

  @override
  bool isValidKey(Object? o) => o is PostsRecord;
}
