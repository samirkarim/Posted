import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdminRecord extends FirestoreRecord {
  AdminRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Usernames" field.
  List<String>? _usernames;
  List<String> get usernames => _usernames ?? const [];
  bool hasUsernames() => _usernames != null;

  // "ReportedPosts" field.
  List<DocumentReference>? _reportedPosts;
  List<DocumentReference> get reportedPosts => _reportedPosts ?? const [];
  bool hasReportedPosts() => _reportedPosts != null;

  // "ReportedComments" field.
  List<DocumentReference>? _reportedComments;
  List<DocumentReference> get reportedComments => _reportedComments ?? const [];
  bool hasReportedComments() => _reportedComments != null;

  void _initializeFields() {
    _usernames = getDataList(snapshotData['Usernames']);
    _reportedPosts = getDataList(snapshotData['ReportedPosts']);
    _reportedComments = getDataList(snapshotData['ReportedComments']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('admin');

  static Stream<AdminRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdminRecord.fromSnapshot(s));

  static Future<AdminRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdminRecord.fromSnapshot(s));

  static AdminRecord fromSnapshot(DocumentSnapshot snapshot) => AdminRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdminRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdminRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdminRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdminRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdminRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class AdminRecordDocumentEquality implements Equality<AdminRecord> {
  const AdminRecordDocumentEquality();

  @override
  bool equals(AdminRecord? e1, AdminRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usernames, e2?.usernames) &&
        listEquality.equals(e1?.reportedPosts, e2?.reportedPosts) &&
        listEquality.equals(e1?.reportedComments, e2?.reportedComments);
  }

  @override
  int hash(AdminRecord? e) => const ListEquality()
      .hash([e?.usernames, e?.reportedPosts, e?.reportedComments]);

  @override
  bool isValidKey(Object? o) => o is AdminRecord;
}
