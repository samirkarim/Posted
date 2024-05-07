import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommentsRecord extends FirestoreRecord {
  CommentsRecord._(
    super.reference,
    super.data,
  ) {
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

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _commentText = snapshotData['commentText'] as String?;
    _createdDateTime = snapshotData['createdDateTime'] as DateTime?;
    _commentLikes = getDataList(snapshotData['commentLikes']);
    _commentDislikes = getDataList(snapshotData['commentDislikes']);
    _commentLikesDislikesTotal =
        castToType<int>(snapshotData['commentLikesDislikesTotal']);
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
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'commentText': commentText,
      'createdDateTime': createdDateTime,
      'commentLikesDislikesTotal': commentLikesDislikesTotal,
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
        e1?.commentLikesDislikesTotal == e2?.commentLikesDislikesTotal;
  }

  @override
  int hash(CommentsRecord? e) => const ListEquality().hash([
        e?.commentText,
        e?.createdDateTime,
        e?.commentLikes,
        e?.commentDislikes,
        e?.commentLikesDislikesTotal
      ]);

  @override
  bool isValidKey(Object? o) => o is CommentsRecord;
}
