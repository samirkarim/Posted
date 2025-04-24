import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CommunitiesRecord extends FirestoreRecord {
  CommunitiesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "posts_ref" field.
  List<DocumentReference>? _postsRef;
  List<DocumentReference> get postsRef => _postsRef ?? const [];
  bool hasPostsRef() => _postsRef != null;

  // "communityName" field.
  String? _communityName;
  String get communityName => _communityName ?? '';
  bool hasCommunityName() => _communityName != null;

  // "communityDescription" field.
  String? _communityDescription;
  String get communityDescription => _communityDescription ?? '';
  bool hasCommunityDescription() => _communityDescription != null;

  // "communityDisplayPic" field.
  String? _communityDisplayPic;
  String get communityDisplayPic => _communityDisplayPic ?? '';
  bool hasCommunityDisplayPic() => _communityDisplayPic != null;

  // "communityMembers" field.
  List<DocumentReference>? _communityMembers;
  List<DocumentReference> get communityMembers => _communityMembers ?? const [];
  bool hasCommunityMembers() => _communityMembers != null;

  // "communityMembersNo" field.
  int? _communityMembersNo;
  int get communityMembersNo => _communityMembersNo ?? 0;
  bool hasCommunityMembersNo() => _communityMembersNo != null;

  // "communityID" field.
  String? _communityID;
  String get communityID => _communityID ?? '';
  bool hasCommunityID() => _communityID != null;

  void _initializeFields() {
    _postsRef = getDataList(snapshotData['posts_ref']);
    _communityName = snapshotData['communityName'] as String?;
    _communityDescription = snapshotData['communityDescription'] as String?;
    _communityDisplayPic = snapshotData['communityDisplayPic'] as String?;
    _communityMembers = getDataList(snapshotData['communityMembers']);
    _communityMembersNo = castToType<int>(snapshotData['communityMembersNo']);
    _communityID = snapshotData['communityID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('communities');

  static Stream<CommunitiesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunitiesRecord.fromSnapshot(s));

  static Future<CommunitiesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunitiesRecord.fromSnapshot(s));

  static CommunitiesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunitiesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunitiesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunitiesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunitiesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunitiesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunitiesRecordData({
  String? communityName,
  String? communityDescription,
  String? communityDisplayPic,
  int? communityMembersNo,
  String? communityID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'communityName': communityName,
      'communityDescription': communityDescription,
      'communityDisplayPic': communityDisplayPic,
      'communityMembersNo': communityMembersNo,
      'communityID': communityID,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunitiesRecordDocumentEquality implements Equality<CommunitiesRecord> {
  const CommunitiesRecordDocumentEquality();

  @override
  bool equals(CommunitiesRecord? e1, CommunitiesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.postsRef, e2?.postsRef) &&
        e1?.communityName == e2?.communityName &&
        e1?.communityDescription == e2?.communityDescription &&
        e1?.communityDisplayPic == e2?.communityDisplayPic &&
        listEquality.equals(e1?.communityMembers, e2?.communityMembers) &&
        e1?.communityMembersNo == e2?.communityMembersNo &&
        e1?.communityID == e2?.communityID;
  }

  @override
  int hash(CommunitiesRecord? e) => const ListEquality().hash([
        e?.postsRef,
        e?.communityName,
        e?.communityDescription,
        e?.communityDisplayPic,
        e?.communityMembers,
        e?.communityMembersNo,
        e?.communityID
      ]);

  @override
  bool isValidKey(Object? o) => o is CommunitiesRecord;
}
