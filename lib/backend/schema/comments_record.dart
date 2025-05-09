import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "commentText" field.
  String? _commentText;
  String get commentText => _commentText ?? '';
  bool hasCommentText() => _commentText != null;

  // "createdDateTime" field.
  DateTime? _createdDateTime;
  DateTime? get createdDateTime => _createdDateTime;
  bool hasCreatedDateTime() => _createdDateTime != null;

  // "commentLikes" field.
  List<DocumentReference>? _commentLikes;
  List<DocumentReference> get commentLikes => _commentLikes ?? const [];
  bool hasCommentLikes() => _commentLikes != null;

  // "commentDislikes" field.
  List<DocumentReference>? _commentDislikes;
  List<DocumentReference> get commentDislikes => _commentDislikes ?? const [];
  bool hasCommentDislikes() => _commentDislikes != null;

  // "commentLikesDislikesTotal" field.
  int? _commentLikesDislikesTotal;
  int get commentLikesDislikesTotal => _commentLikesDislikesTotal ?? 0;
  bool hasCommentLikesDislikesTotal() => _commentLikesDislikesTotal != null;

  // "commenter" field.
  DocumentReference? _commenter;
  DocumentReference? get commenter => _commenter;
  bool hasCommenter() => _commenter != null;

  // "repliedComment" field.
  List<DocumentReference>? _repliedComment;
  List<DocumentReference> get repliedComment => _repliedComment ?? const [];
  bool hasRepliedComment() => _repliedComment != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentText = snapshotData['commentText'] as String?;
    _createdDateTime = snapshotData['createdDateTime'] as DateTime?;
    _commentLikes = getDataList(snapshotData['commentLikes']);
    _commentDislikes = getDataList(snapshotData['commentDislikes']);
    _commentLikesDislikesTotal =
        castToType<int>(snapshotData['commentLikesDislikesTotal']);
    _commenter = snapshotData['commenter'] as DocumentReference?;
    _repliedComment = getDataList(snapshotData['repliedComment']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('comments')
          : FirebaseFirestore.instance.collectionGroup('comments');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('comments').doc(id);

  static Stream<CommentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommentsRecord.fromSnapshot(s));

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommentsRecord.fromSnapshot(s));

  static CommentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentText,
  DateTime? createdDateTime,
  int? commentLikesDislikesTotal,
  DocumentReference? commenter,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentText': commentText,
      'createdDateTime': createdDateTime,
      'commentLikesDislikesTotal': commentLikesDislikesTotal,
      'commenter': commenter,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommentsRecordDocumentEquality implements Equality<CommentsRecord> {
  const CommentsRecordDocumentEquality();

  @override
  bool equals(CommentsRecord? e1, CommentsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.commentText == e2?.commentText &&
        e1?.createdDateTime == e2?.createdDateTime &&
        listEquality.equals(e1?.commentLikes, e2?.commentLikes) &&
        listEquality.equals(e1?.commentDislikes, e2?.commentDislikes) &&
        e1?.commentLikesDislikesTotal == e2?.commentLikesDislikesTotal &&
        e1?.commenter == e2?.commenter &&
        listEquality.equals(e1?.repliedComment, e2?.repliedComment);
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentText,
        e?.createdDateTime,
        e?.commentLikes,
        e?.commentDislikes,
        e?.commentLikesDislikesTotal,
        e?.commenter,
        e?.repliedComment
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
